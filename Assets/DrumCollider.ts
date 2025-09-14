
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
        let stick = e.collision.collider.getSceneObject()
        let physicsBody = stick.getComponent("Physics.BodyComponent")
        print(physicsBody.velocity.y)
        if (physicsBody.velocity.y < -5)
            this.audio.play(3)
    }
}
