
@component
export class NewScript extends BaseScriptComponent {
    @input
    audio: AudioComponent

    
    onAwake() {
        this.audio.playbackMode = Audio.PlaybackMode.LowLatency
        
        let physicsBody = this.sceneObject.getComponent("Physics.BodyComponent")
        physicsBody.onCollisionEnter.add(this.onCollisionEnter.bind(this))
    }
    
    
   onCollisionEnter(e) {
        this.audio.play(3)
    }
}
