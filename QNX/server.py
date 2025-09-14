import asyncio
import time
import argparse
import websockets
from websockets.exceptions import ConnectionClosed

from mcp3008 import MCP3008

DEFAULT_HOST = "0.0.0.0"
DEFAULT_PORT = 5000

#FORCE_CHANGE_THRESHOLD = 150
FORCE_CHANGE_THRESHOLD = 1
FREQUENCY_HZ = 10
COOLDOWN_SEC = 0.2

adc = MCP3008()
client_lock = asyncio.Lock()
last_force = 0
last_trigger_time = time.time()

def read_adc():
    return (adc.read_channel(2) + adc.read_channel(3)) // 2

def compute_force(adc_reading: float) -> int:
    return min(int((adc_reading * 0.0012) ** 30 * 100), 100)

def compute_force_change(new_force: int) -> int:
    """ Return average change in force, in N/s, since last measurement """
    global last_force
    old_force = last_force
    last_force = new_force
    return (new_force - old_force) * FREQUENCY_HZ

async def trigger_stream(websocket):
    global last_trigger_time
    try:
        async with client_lock:  # only one client at a time
            print('Client connected')
            while True:
                adc_reading = read_adc()
                force = compute_force(adc_reading)
                force_change = compute_force_change(force)
                if force_change >= FORCE_CHANGE_THRESHOLD and (time.time() - last_trigger_time) >= COOLDOWN_SEC:
                    last_trigger_time = time.time()
                    msg = f'{{"forceChange": {force_change}, "force": {force}, "adc": {adc_reading}}}\n'
                    await websocket.send(msg)
                await asyncio.sleep(1 / FREQUENCY_HZ)
    except ConnectionClosed:
        print("Client disconnected, ready for new connection")
    except Exception as e:
        print(f"Error in trigger_stream: {e}")

async def main(host, port):
    async with websockets.serve(trigger_stream, host, port):
        print(f"WebSocket server listening at ws://{host}:{port}")
        await asyncio.Future()  # run forever

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Voltage streaming WebSocket server")
    parser.add_argument("--host", default=DEFAULT_HOST, help=f"Host to bind (default {DEFAULT_HOST})")
    parser.add_argument("--port", type=int, default=DEFAULT_PORT, help=f"Port to bind (default {DEFAULT_PORT})")
    args = parser.parse_args()

    asyncio.run(main(args.host, args.port))

