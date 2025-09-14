@component
export class TheKicker extends BaseScriptComponent {
  @input
  internetModule: InternetModule;
    
  @input
  audio: AudioComponent  

  private socket!: WebSocket;
  // Method called when the script is awake
  async onAwake() {
        
  print("BLEH")
  this.audio.playbackMode = Audio.PlaybackMode.LowLatency
  this.socket = this.internetModule.createWebSocket("ws://10.37.96.225:5000");
  this.socket.binaryType = 'blob';
        
    this.socket.onopen = (event: WebSocketEvent) => {
      // Socket has opened, send a message back to the server
      this.socket.send('Message 1');
    
      // Try sending a binary message
      // (the bytes below spell 'Message 2')
      const message: number[] = [77, 101, 115, 115, 97, 103, 101, 32, 50];
      const bytes = new Uint8Array(message);
      this.socket.send(bytes);
    };
        

  // Listen for messages
  this.socket.onmessage = async (event: WebSocketMessageEvent) => {
    let jsonString: string;

    if (event.data instanceof Blob) {
      // Binary frame - get text content from Blob
      jsonString = await event.data.text();
      print('Received binary message');
    } else {
      // Text frame
      jsonString = event.data;
      print("received: " + jsonString);
    }

    try {
      const parsed = JSON.parse(jsonString);
      
      if ('force' in parsed) {
        const forceValue = parsed.force;
        print('Extracted force value: ' + forceValue);
        
        // TODO: Do something useful with forceValue here
        this.audio.play(3)
        
      } else {
        print('Warning: "force" key not found in received JSON.');
      }
    } catch (error) {
      print('Error parsing JSON: ' + error);
    }
  };

  this.socket.onclose = (event: WebSocketCloseEvent) => {
    if (event.wasClean) {
      print('Socket closed cleanly');
    } else {
      print('Socket closed with error, code: ' + event.code);
    }
  };

  this.socket.onerror = (event: WebSocketEvent) => {
    print('Socket error');
  };
  }
}
