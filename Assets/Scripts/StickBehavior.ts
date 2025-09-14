import { Buffer } from "Scripts/Utils/Buffer";
//import { DartBoardController } from "Scripts/DartBoardController";
import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { InteractorInputType } from "SpectaclesInteractionKit.lspkg/Core/Interactor/Interactor";
import { InteractorEvent } from "SpectaclesInteractionKit.lspkg/Core/Interactor/InteractorEvent";
import WorldCameraFinderProvider from "SpectaclesInteractionKit.lspkg/Providers/CameraProvider/WorldCameraFinderProvider";
import { SIK } from "SpectaclesInteractionKit.lspkg/SIK";

@component
export class StickBehavior extends BaseScriptComponent {
    @input
    audio:AudioComponent

    physicsBody:BodyComponent
    interactable:Interactable

    private t:Transform

    private handInputData = SIK.HandInputData;
    private hand = this.handInputData.getHand('right');

    private isFlying = false
    private startedFlyingAt = -1
    private isHolding = false
    private accumulatedForce:vec3 = vec3.zero()
    private prevHandVelocity:vec3 = vec3.zero()
    private prevPos:vec3 = vec3.zero()

    private rotationBuffer:Buffer = new Buffer(4)
    private positionBuffer:Buffer = new Buffer(4)

    private velocityBuffer:Buffer = new Buffer(4)
    private accBuffer:Buffer = new Buffer(4)

    private OBJECT_MASS = 0.04

    private HAND_ACCELERATION_MULTIPLIER = 0.12
    private HAND_BASE_VELOCITY_MULTIPLIER = 0.3
    private BOARD_OFFSET = 2

    private dartBoardT:Transform

    private frameNmr = 0

    private objectHit:SceneObject
    private objectHitT:Transform

    /**
     * If the ball falls below this Y position in the scene world,
     * it will be destroyed, simulating hitting "the ground."
     */
    private GROUND_Y_OFFSET = -350
    
    onAwake() {
        this.createEvent('OnStartEvent').bind(() => {
          this.onStart();
        });
        
        this.audio.playbackMode = Audio.PlaybackMode.LowLatency        
    }

    onStart() {
//        this.audio.playbackMode = Audio.PlaybackMode.LowLatency
        this.physicsBody = this.sceneObject.getComponent("Physics.BodyComponent")
        this.physicsBody.mass = 0
        this.physicsBody.onCollisionEnter.add(this.onCollisionEnter.bind(this))

        this.interactable = this.sceneObject.getComponent(Interactable.getTypeName())
        this.interactable.onInteractorTriggerStart(this.onTriggerStart.bind(this))
        this.interactable.onInteractorTriggerEnd(this.onTriggerEnd.bind(this))

        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this))
        this.t = this.getTransform()
    }

    onTriggerStart (e:InteractorEvent) {
        let inputType = e.interactor.inputType
        this.hand = this.handInputData.getHand(inputType == InteractorInputType.LeftHand ? 'left' : 'right');

        this.physicsBody.mass = this.OBJECT_MASS
        this.isHolding = true
        this.prevHandVelocity = vec3.zero()
        this.accumulatedForce = vec3.zero()

        if (global.deviceInfoSystem.isDesktop()) {
            return
        }
    }

    onTriggerEnd () {
        return
    }

    onCollisionEnter(e) {
        let stick = e.collision.collider.getSceneObject()
        if (this.sceneObject != stick) {
            let isStick = stick.getComponent(StickBehavior.getTypeName())
            if (isStick) {
                this.audio.play(3)
            }
        }
    }

    isStraightHit (rot:quat) {
        let angle = this.dartBoardT.forward.angleTo(rot.multiplyVec3(vec3.forward())) * (180/Math.PI)
        // ScreenLogger.getInstance().log(":" + (angle).toFixed(1))
        return angle < 66 && angle > 0// check if less than 66 deg
    }

    onUpdate () {
        if (this.isHolding && getDeltaTime() > 0) {
            let handAcceleration = (this.getHandVelocity().sub(this.prevHandVelocity)).uniformScale(1/(Math.max(0.016666, getDeltaTime())));
            this.accumulatedForce = this.accumulatedForce.add(handAcceleration.uniformScale(this.HAND_ACCELERATION_MULTIPLIER));
            
            this.velocityBuffer.add(this.getHandVelocity())
            this.accBuffer.add(this.accumulatedForce)

            this.prevHandVelocity = this.getHandVelocity()
            this.prevPos = this.t.getWorldPosition()
            this.rotationBuffer.add(this.t.getWorldRotation())
            this.positionBuffer.add(this.t.getWorldPosition())
            
            let endPoint = this.hand.pinkyTip.position
    
            let startPoint = this.hand.thumbKnuckle.position.add(this.hand.thumbTip.position).uniformScale(0.5)
            let direction = startPoint.sub(endPoint)
 
            this.t.setWorldPosition(startPoint.sub(endPoint.sub(startPoint).uniformScale(0.8)))
            this.t.setWorldRotation(quat.lookAt(direction, vec3.up()))
            this.physicsBody.velocity = this.getHandVelocity()
            
            
            this.isHolding = this.hand.indexTip.position.distance(this.hand.thumbTip.position) < 6
            if (!this.isHolding) {
                this.physicsBody.velocity = this.getHandVelocity()
                this.isFlying = true
                this.startedFlyingAt = getTime()
            }
        }


        if (this.startedFlyingAt > 0 && getTime() - this.startedFlyingAt > 20) {
            this.destroy()
            return
        }
        
        this.frameNmr += 1
    }

    getHandVelocity(): vec3 {
        // If in the Lens Studio Editor, return a fixed simulated velocity
        if (global.deviceInfoSystem.isEditor()) {
            return WorldCameraFinderProvider.getInstance().forward().uniformScale(-1050);
        }
    
        // Retrieve the hand's object-specific velocity data if available
        const objectSpecificData = this.hand.objectTracking3D.objectSpecificData;
        if (objectSpecificData) {
            const handVelocity = objectSpecificData['global'];
    
            // If the magnitude of the velocity is too low,
            // it is likely just jitter so we ignore by returning 0
            if (handVelocity.length < 2) {
                return vec3.zero();
            }
    
            return handVelocity;
        }
    
        // If no tracking data is available, return zero
        return vec3.zero();
    }

}
