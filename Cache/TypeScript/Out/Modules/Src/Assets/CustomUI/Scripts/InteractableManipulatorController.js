"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.InteractableLineProjection = void 0;
var __selfType = requireType("./InteractableManipulatorController");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const NativeLogger_1 = require("SpectaclesInteractionKit.lspkg/Utils/NativeLogger");
const TAG = "InteractableClampController";
/**
 * Projects an interactable object's position onto a line and moves a visual reference
 * to show the clamped/projected position. Calculates normalized values for callbacks.
 */
let InteractableLineProjection = class InteractableLineProjection extends BaseScriptComponent {
    onAwake() {
        this.createEvent("OnStartEvent").bind(() => {
            this.onStart();
        });
        // Update every frame if not limited to manipulation only
        if (!this.onlyDuringManipulation) {
            this.createEvent("UpdateEvent").bind(() => {
                this.update();
            });
        }
    }
    onStart() {
        if (!this.interactable) {
            this.log.e("Interactable component is required");
            return;
        }
        if (!this.manipulationComponent) {
            this.log.e("InteractableManipulation component is required");
            return;
        }
        if (!this.lineStart || !this.lineEnd) {
            this.log.e("Line Start and Line End are required");
            return;
        }
        if (!this.visualReference) {
            this.log.e("Visual Reference object is required");
            return;
        }
        this.setupManipulationCallbacks();
        this.log.d("InteractableLineProjection initialized");
        // Do initial projection
        this.updateProjection();
    }
    setupManipulationCallbacks() {
        if (this.manipulationComponent) {
            // Manipulation start event
            this.manipulationComponent.onManipulationStart.add((event) => {
                this.onManipulationStarted(event);
            });
            // Manipulation update event
            this.manipulationComponent.onManipulationUpdate.add((event) => {
                this.onManipulationUpdate(event);
            });
            // Manipulation end event
            this.manipulationComponent.onManipulationEnd.add((event) => {
                this.onManipulationEnded(event);
            });
        }
    }
    onManipulationStarted(event) {
        this.isManipulating = true;
        this.log.d("Manipulation started - projection active");
    }
    onManipulationUpdate(event) {
        if (this.enableProjection) {
            this.updateProjection();
        }
    }
    onManipulationEnded(event) {
        this.isManipulating = false;
        this.log.d("Manipulation ended - snapping to projected position");
        // Move the manipulator object to match the visual reference position
        if (this.visualReference) {
            const visualPosition = this.visualReference.getTransform().getWorldPosition();
            this.manipulationComponent.getManipulateRoot().setWorldPosition(visualPosition);
        }
    }
    update() {
        if (this.enableProjection && (!this.onlyDuringManipulation || this.isManipulating)) {
            this.updateProjection();
        }
    }
    /**
     * Projects the interactable object's position onto the line and updates visual reference
     */
    updateProjection() {
        if (!this.lineStart || !this.lineEnd || !this.visualReference) {
            return;
        }
        // Get positions
        const objectPosition = this.manipulationComponent.getManipulateRoot().getWorldPosition();
        const lineStartPosition = this.lineStart.getTransform().getWorldPosition();
        const lineEndPosition = this.lineEnd.getTransform().getWorldPosition();
        // Project the object position onto the line
        const projectedPosition = this.getProjectionOnLine(objectPosition, lineStartPosition, lineEndPosition);
        // Move visual reference to projected position
        this.visualReference.getTransform().setWorldPosition(projectedPosition);
        // Calculate normalized value (0 to 1) based on position along the line
        const normalizedValue = this.calculateNormalizedValue(projectedPosition, lineStartPosition, lineEndPosition);
        // Call callback if value changed
        if (Math.abs(normalizedValue - this.lastNormalizedValue) > 0.001) {
            this.invokeCallback(normalizedValue);
            this.lastNormalizedValue = normalizedValue;
        }
    }
    /**
     * Calculate the closest point on a line to a given point
     * Based on the SnapToLine algorithm
     */
    getProjectionOnLine(point, lineStart, lineEnd) {
        // Calculate the line direction and length
        const lineDirection = lineEnd.sub(lineStart);
        const lineLength = lineDirection.length;
        if (lineLength === 0) {
            return lineStart; // Line has no length, return start point
        }
        const normalizedDirection = lineDirection.normalize();
        // Project the point onto the line
        const startToPoint = point.sub(lineStart);
        const projectionLength = startToPoint.dot(normalizedDirection);
        // Clamp the projection to the bounds of the line
        const clampedProjection = Math.max(0, Math.min(projectionLength, lineLength));
        // Calculate the closest point on the line
        return lineStart.add(normalizedDirection.uniformScale(clampedProjection));
    }
    /**
     * Calculate normalized value (0 to 1) based on position along the line
     */
    calculateNormalizedValue(projectedPosition, lineStart, lineEnd) {
        const lineDirection = lineEnd.sub(lineStart);
        const lineLength = lineDirection.length;
        if (lineLength === 0) {
            return 0; // Line has no length
        }
        const startToProjected = projectedPosition.sub(lineStart);
        const projectionLength = startToProjected.dot(lineDirection.normalize());
        // Normalize to 0-1 range
        // return MathUtils.clamp(projectionLength / lineLength, 0, 2); // from zero speed to double speed
        // Normalize to 0-2 range
        if (this.doubleMapping) {
            const normalizedValue = (projectionLength / lineLength) * 2;
            return MathUtils.clamp(normalizedValue, 0, 2);
        }
        else {
            const normalizedValue = (projectionLength / lineLength);
            return MathUtils.clamp(normalizedValue, 0, 1);
        }
    }
    /**
     * Invokes the callback with the calculated normalized value
     */
    invokeCallback(normalizedValue) {
        if (this.callback && this.callback[this.methodName]) {
            try {
                this.callback[this.methodName](normalizedValue);
                this.log.d(`Callback invoked with value: ${normalizedValue}`);
            }
            catch (error) {
                this.log.e(`Error invoking callback: ${error}`);
            }
        }
    }
    /**
     * Manually set the line boundaries
     */
    setLineBoundaries(startPoint, endPoint) {
        this.lineStart = startPoint;
        this.lineEnd = endPoint;
        this.log.d("Line boundaries updated");
        // Update projection with new boundaries
        if (this.enableProjection) {
            this.updateProjection();
        }
    }
    /**
     * Enable or disable projection
     */
    setProjectionEnabled(enabled) {
        this.enableProjection = enabled;
        this.log.d(`Projection ${enabled ? 'enabled' : 'disabled'}`);
    }
    /**
     * Update the callback configuration
     */
    setCallback(callbackScript, methodName) {
        this.callback = callbackScript;
        this.methodName = methodName;
        this.log.d(`Callback updated: ${methodName}`);
    }
    /**
     * Get the current normalized value
     */
    getCurrentNormalizedValue() {
        return this.lastNormalizedValue;
    }
    /**
     * Get the current projected position
     */
    getCurrentProjectedPosition() {
        if (!this.visualReference) {
            return vec3.zero();
        }
        return this.visualReference.getTransform().getWorldPosition();
    }
    __initialize() {
        super.__initialize();
        this.log = new NativeLogger_1.default(TAG);
        this.isManipulating = false;
        this.lastNormalizedValue = -1;
    }
};
exports.InteractableLineProjection = InteractableLineProjection;
exports.InteractableLineProjection = InteractableLineProjection = __decorate([
    component
], InteractableLineProjection);
//# sourceMappingURL=InteractableManipulatorController.js.map