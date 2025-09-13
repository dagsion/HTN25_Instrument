if (script.onAwake) {
	script.onAwake();
	return;
};
function checkUndefined(property, showIfData){
   for (var i = 0; i < showIfData.length; i++){
       if (showIfData[i][0] && script[showIfData[i][0]] != showIfData[i][1]){
           return;
       }
   }
   if (script[property] == undefined){
      throw new Error('Input ' + property + ' was not provided for the object ' + script.getSceneObject().name);
   }
}
// @input AssignableType interactable {"hint":"The Interactable component to monitor"}
// @input AssignableType_1 manipulationComponent {"hint":"The InteractableManipulation component for manipulation events"}
// @input SceneObject lineStart {"hint":"The start point of the line (represents minimum value)"}
// @input SceneObject lineEnd {"hint":"The end point of the line (represents maximum value)"}
// @input SceneObject visualReference {"hint":"The visual object that will move along the line to show projected position"}
// @input Component.ScriptComponent callback {"hint":"Script component to call when projection value changes"}
// @input string methodName {"hint":"Method name to call on the callback script"}
// @input bool enableProjection = true {"hint":"Enable projection and visual reference updates"}
// @input bool onlyDuringManipulation = true {"hint":"Only update during manipulation (if false, updates every frame)"}
// @input bool doubleMapping = true {"hint":"Double the mapping means that the value will be from 0 to 2 instead of 0 to 1"}
var scriptPrototype = Object.getPrototypeOf(script);
if (!global.BaseScriptComponent){
   function BaseScriptComponent(){}
   global.BaseScriptComponent = BaseScriptComponent;
   global.BaseScriptComponent.prototype = scriptPrototype;
   global.BaseScriptComponent.prototype.__initialize = function(){};
   global.BaseScriptComponent.getTypeName = function(){
       throw new Error("Cannot get type name from the class, not decorated with @component");
   }
}
var Module = require("../../../../../Modules/Src/Assets/CustomUI/Scripts/InteractableManipulatorController");
Object.setPrototypeOf(script, Module.InteractableLineProjection.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("interactable", []);
    checkUndefined("manipulationComponent", []);
    checkUndefined("lineStart", []);
    checkUndefined("lineEnd", []);
    checkUndefined("visualReference", []);
    checkUndefined("methodName", []);
    checkUndefined("enableProjection", []);
    checkUndefined("onlyDuringManipulation", []);
    checkUndefined("doubleMapping", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
