package
{
   import net.wg.gui.lobby.settings.ControlsSettings;
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.text.engine.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class ControlsSettings extends net.wg.gui.lobby.settings.ControlsSettings
   {
      
      public function ControlsSettings()
      {
         super();
         this.__setProp_keyboardFieldSet_ControlsSettings_fieldset_0();
         this.__setProp_mouseFieldSet_ControlsSettings_fieldset_0();
         this.__setProp_keys_ControlsSettings_keyboardcontrols_0();
         this.__setProp_mouseHorzInvertCheckbox_ControlsSettings_mousecontrols_0();
         this.__setProp_mouseVertInvertCheckbox_ControlsSettings_mousecontrols_0();
         this.__setProp_mouseArcadeSensSlider_ControlsSettings_mousecontrols_0();
         this.__setProp_mouseSniperSensSlider_ControlsSettings_mousecontrols_0();
         this.__setProp_mouseStrategicSensSlider_ControlsSettings_mousecontrols_0();
         this.__setProp_backDraftInvertCheckbox_ControlsSettings_mousecontrols_0();
      }
      
      function __setProp_keyboardFieldSet_ControlsSettings_fieldset_0() : *
      {
         try
         {
            keyboardFieldSet["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         keyboardFieldSet.enabled = true;
         keyboardFieldSet.enableInitCallback = false;
         keyboardFieldSet.label = "";
         keyboardFieldSet.margin = 5;
         keyboardFieldSet.showLabel = true;
         keyboardFieldSet.visible = true;
         try
         {
            keyboardFieldSet["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mouseFieldSet_ControlsSettings_fieldset_0() : *
      {
         try
         {
            mouseFieldSet["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mouseFieldSet.enabled = true;
         mouseFieldSet.enableInitCallback = false;
         mouseFieldSet.label = "";
         mouseFieldSet.margin = 5;
         mouseFieldSet.showLabel = true;
         mouseFieldSet.visible = true;
         try
         {
            mouseFieldSet["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_keys_ControlsSettings_keyboardcontrols_0() : *
      {
         try
         {
            keys["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         keys.enabled = true;
         keys.enableInitCallback = false;
         keys.focusable = true;
         keys.itemRendererName = "KeysItemRenderer";
         keys.itemRendererInstanceName = "";
         keys.scrollBar = "scrollBar";
         keys.scrollStepFactor = 20;
         keys.useRightButton = false;
         keys.useRightButtonForSelect = false;
         keys.visible = true;
         keys.wrapping = "normal";
         try
         {
            keys["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mouseHorzInvertCheckbox_ControlsSettings_mousecontrols_0() : *
      {
         try
         {
            mouseHorzInvertCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mouseHorzInvertCheckbox.autoSize = "none";
         mouseHorzInvertCheckbox.data = "";
         mouseHorzInvertCheckbox.disabledTextAlpha = 0.5;
         mouseHorzInvertCheckbox.enabled = true;
         mouseHorzInvertCheckbox.enableInitCallback = false;
         mouseHorzInvertCheckbox.focusable = true;
         mouseHorzInvertCheckbox.infoIcoType = "";
         mouseHorzInvertCheckbox.label = "";
         mouseHorzInvertCheckbox.selected = false;
         mouseHorzInvertCheckbox.soundId = "";
         mouseHorzInvertCheckbox.soundType = "";
         mouseHorzInvertCheckbox.textColor = 9868935;
         mouseHorzInvertCheckbox.textFont = "$TextFont";
         mouseHorzInvertCheckbox.textSize = 12;
         mouseHorzInvertCheckbox.toolTip = "";
         mouseHorzInvertCheckbox.visible = true;
         try
         {
            mouseHorzInvertCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mouseVertInvertCheckbox_ControlsSettings_mousecontrols_0() : *
      {
         try
         {
            mouseVertInvertCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mouseVertInvertCheckbox.autoSize = "none";
         mouseVertInvertCheckbox.data = "";
         mouseVertInvertCheckbox.disabledTextAlpha = 0.5;
         mouseVertInvertCheckbox.enabled = true;
         mouseVertInvertCheckbox.enableInitCallback = false;
         mouseVertInvertCheckbox.focusable = true;
         mouseVertInvertCheckbox.infoIcoType = "";
         mouseVertInvertCheckbox.label = "";
         mouseVertInvertCheckbox.selected = false;
         mouseVertInvertCheckbox.soundId = "";
         mouseVertInvertCheckbox.soundType = "";
         mouseVertInvertCheckbox.textColor = 9868935;
         mouseVertInvertCheckbox.textFont = "$TextFont";
         mouseVertInvertCheckbox.textSize = 12;
         mouseVertInvertCheckbox.toolTip = "";
         mouseVertInvertCheckbox.visible = true;
         try
         {
            mouseVertInvertCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mouseArcadeSensSlider_ControlsSettings_mousecontrols_0() : *
      {
         try
         {
            mouseArcadeSensSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mouseArcadeSensSlider.enabled = true;
         mouseArcadeSensSlider.enableInitCallback = false;
         mouseArcadeSensSlider.focusable = true;
         mouseArcadeSensSlider.liveDragging = true;
         mouseArcadeSensSlider.maximum = 1.5;
         mouseArcadeSensSlider.minimum = 0.01;
         mouseArcadeSensSlider.snapInterval = 0.02;
         mouseArcadeSensSlider.snapping = false;
         mouseArcadeSensSlider.undefinedDisabled = false;
         mouseArcadeSensSlider.value = 0;
         mouseArcadeSensSlider.visible = true;
         try
         {
            mouseArcadeSensSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mouseSniperSensSlider_ControlsSettings_mousecontrols_0() : *
      {
         try
         {
            mouseSniperSensSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mouseSniperSensSlider.enabled = true;
         mouseSniperSensSlider.enableInitCallback = false;
         mouseSniperSensSlider.focusable = true;
         mouseSniperSensSlider.liveDragging = true;
         mouseSniperSensSlider.maximum = 1.5;
         mouseSniperSensSlider.minimum = 0.01;
         mouseSniperSensSlider.snapInterval = 0.02;
         mouseSniperSensSlider.snapping = false;
         mouseSniperSensSlider.undefinedDisabled = false;
         mouseSniperSensSlider.value = 0;
         mouseSniperSensSlider.visible = true;
         try
         {
            mouseSniperSensSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mouseStrategicSensSlider_ControlsSettings_mousecontrols_0() : *
      {
         try
         {
            mouseStrategicSensSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mouseStrategicSensSlider.enabled = true;
         mouseStrategicSensSlider.enableInitCallback = false;
         mouseStrategicSensSlider.focusable = true;
         mouseStrategicSensSlider.liveDragging = true;
         mouseStrategicSensSlider.maximum = 3;
         mouseStrategicSensSlider.minimum = 0.01;
         mouseStrategicSensSlider.snapInterval = 0.04;
         mouseStrategicSensSlider.snapping = false;
         mouseStrategicSensSlider.undefinedDisabled = false;
         mouseStrategicSensSlider.value = 0;
         mouseStrategicSensSlider.visible = true;
         try
         {
            mouseStrategicSensSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_backDraftInvertCheckbox_ControlsSettings_mousecontrols_0() : *
      {
         try
         {
            backDraftInvertCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         backDraftInvertCheckbox.autoSize = "none";
         backDraftInvertCheckbox.data = "";
         backDraftInvertCheckbox.disabledTextAlpha = 0.5;
         backDraftInvertCheckbox.enabled = true;
         backDraftInvertCheckbox.enableInitCallback = false;
         backDraftInvertCheckbox.focusable = true;
         backDraftInvertCheckbox.infoIcoType = "";
         backDraftInvertCheckbox.label = "";
         backDraftInvertCheckbox.selected = false;
         backDraftInvertCheckbox.soundId = "";
         backDraftInvertCheckbox.soundType = "";
         backDraftInvertCheckbox.textColor = 9868935;
         backDraftInvertCheckbox.textFont = "$TextFont";
         backDraftInvertCheckbox.textSize = 12;
         backDraftInvertCheckbox.toolTip = "";
         backDraftInvertCheckbox.visible = true;
         try
         {
            backDraftInvertCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
