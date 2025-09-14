import rpi_gpio as GPIO
import time

class MCP3008:
    def __init__(self, cs=8, clk=11, mosi=10, miso=9):
        self.cs = cs
        self.clk = clk
        self.mosi = mosi
        self.miso = miso

        GPIO.setmode(GPIO.BCM)
        GPIO.setup(self.cs, GPIO.OUT)
        GPIO.setup(self.clk, GPIO.OUT)
        GPIO.setup(self.mosi, GPIO.OUT)
        GPIO.setup(self.miso, GPIO.IN)

        # Set initial states
        GPIO.output(self.cs, GPIO.HIGH)
        GPIO.output(self.clk, GPIO.LOW)
        GPIO.output(self.mosi, GPIO.LOW)

    def read_channel(self, channel: int) -> int:
        if not 0 <= channel <= 7:
            raise ValueError("Channel must be 0–7")

        # Start bit + single-ended + channel bits
        command = 0b11 << 6 | (channel << 3)

        GPIO.output(self.cs, GPIO.LOW)

        # Send 5 command bits (start + single/diff + channel)
        for i in range(5):
            bit = (command & (0b10000 >> i)) != 0
            GPIO.output(self.mosi, bit)
            GPIO.output(self.clk, GPIO.HIGH)
            GPIO.output(self.clk, GPIO.LOW)

        # Read 12 bits (1 null, 10 data, 1 extra)
        result = 0
        for _ in range(12):
            GPIO.output(self.clk, GPIO.HIGH)
            GPIO.output(self.clk, GPIO.LOW)
            result = (result << 1) | GPIO.input(self.miso)

        GPIO.output(self.cs, GPIO.HIGH)

        # Strip null bit and extra bit
        return (result >> 1) & 0x3FF


if __name__ == "__main__":
    adc = MCP3008()
    try:
        while True:
            values = [adc.read_channel(i) for i in range(8)]
            print(''.join(f'{v:6}' for v in values))
            time.sleep(0.5)
    except KeyboardInterrupt:
        GPIO.cleanup()

