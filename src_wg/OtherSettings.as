package
{
   import net.wg.gui.lobby.settings.OtherSettings;
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
   
   public dynamic class OtherSettings extends net.wg.gui.lobby.settings.OtherSettings
   {
      
      public function OtherSettings()
      {
         super();
         this.__setProp_fieldSetVibro_OtherSettings_bg_0();
         this.__setProp_vibroGainValue_OtherSettings_ns_0();
         this.__setProp_vibroEngineValue_OtherSettings_ns_0();
         this.__setProp_vibroAccelerationValue_OtherSettings_ns_0();
         this.__setProp_vibroShotsValue_OtherSettings_ns_0();
         this.__setProp_vibroHitsValue_OtherSettings_ns_0();
         this.__setProp_vibroCollisionsValue_OtherSettings_ns_0();
         this.__setProp_vibroDamageValue_OtherSettings_ns_0();
         this.__setProp_vibroGUIValue_OtherSettings_ns_0();
         this.__setProp_vibroGainSlider_OtherSettings_controls_0();
         this.__setProp_vibroEngineSlider_OtherSettings_controls_0();
         this.__setProp_vibroAccelerationSlider_OtherSettings_controls_0();
         this.__setProp_vibroShotsSlider_OtherSettings_controls_0();
         this.__setProp_vibroHitsSlider_OtherSettings_controls_0();
         this.__setProp_vibroCollisionsSlider_OtherSettings_controls_0();
         this.__setProp_vibroDamageSlider_OtherSettings_controls_0();
         this.__setProp_vibroGUISlider_OtherSettings_controls_0();
      }
      
      function __setProp_fieldSetVibro_OtherSettings_bg_0() : *
      {
         try
         {
            fieldSetVibro["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fieldSetVibro.enabled = true;
         fieldSetVibro.enableInitCallback = false;
         fieldSetVibro.label = "";
         fieldSetVibro.margin = 5;
         fieldSetVibro.showLabel = true;
         fieldSetVibro.visible = true;
         try
         {
            fieldSetVibro["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroGainValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroGainValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroGainValue.autoSize = "none";
         vibroGainValue.enabled = true;
         vibroGainValue.enableInitCallback = false;
         vibroGainValue.text = "n/a";
         vibroGainValue.textAlign = "none";
         vibroGainValue.visible = true;
         try
         {
            vibroGainValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroEngineValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroEngineValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroEngineValue.autoSize = "none";
         vibroEngineValue.enabled = true;
         vibroEngineValue.enableInitCallback = false;
         vibroEngineValue.text = "n/a";
         vibroEngineValue.textAlign = "none";
         vibroEngineValue.visible = true;
         try
         {
            vibroEngineValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroAccelerationValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroAccelerationValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroAccelerationValue.autoSize = "none";
         vibroAccelerationValue.enabled = true;
         vibroAccelerationValue.enableInitCallback = false;
         vibroAccelerationValue.text = "n/a";
         vibroAccelerationValue.textAlign = "none";
         vibroAccelerationValue.visible = true;
         try
         {
            vibroAccelerationValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroShotsValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroShotsValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroShotsValue.autoSize = "none";
         vibroShotsValue.enabled = true;
         vibroShotsValue.enableInitCallback = false;
         vibroShotsValue.text = "n/a";
         vibroShotsValue.textAlign = "none";
         vibroShotsValue.visible = true;
         try
         {
            vibroShotsValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroHitsValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroHitsValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroHitsValue.autoSize = "none";
         vibroHitsValue.enabled = true;
         vibroHitsValue.enableInitCallback = false;
         vibroHitsValue.text = "n/a";
         vibroHitsValue.textAlign = "none";
         vibroHitsValue.visible = true;
         try
         {
            vibroHitsValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroCollisionsValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroCollisionsValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroCollisionsValue.autoSize = "none";
         vibroCollisionsValue.enabled = true;
         vibroCollisionsValue.enableInitCallback = false;
         vibroCollisionsValue.text = "n/a";
         vibroCollisionsValue.textAlign = "none";
         vibroCollisionsValue.visible = true;
         try
         {
            vibroCollisionsValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroDamageValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroDamageValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroDamageValue.autoSize = "none";
         vibroDamageValue.enabled = true;
         vibroDamageValue.enableInitCallback = false;
         vibroDamageValue.text = "n/a";
         vibroDamageValue.textAlign = "none";
         vibroDamageValue.visible = true;
         try
         {
            vibroDamageValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroGUIValue_OtherSettings_ns_0() : *
      {
         try
         {
            vibroGUIValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroGUIValue.autoSize = "none";
         vibroGUIValue.enabled = true;
         vibroGUIValue.enableInitCallback = false;
         vibroGUIValue.text = "n/a";
         vibroGUIValue.textAlign = "none";
         vibroGUIValue.visible = true;
         try
         {
            vibroGUIValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroGainSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroGainSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroGainSlider.enabled = true;
         vibroGainSlider.enableInitCallback = false;
         vibroGainSlider.focusable = true;
         vibroGainSlider.liveDragging = true;
         vibroGainSlider.maximum = 100;
         vibroGainSlider.minimum = 0;
         vibroGainSlider.snapInterval = 1;
         vibroGainSlider.snapping = true;
         vibroGainSlider.undefinedDisabled = false;
         vibroGainSlider.value = 0;
         vibroGainSlider.visible = true;
         try
         {
            vibroGainSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroEngineSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroEngineSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroEngineSlider.enabled = true;
         vibroEngineSlider.enableInitCallback = false;
         vibroEngineSlider.focusable = true;
         vibroEngineSlider.liveDragging = true;
         vibroEngineSlider.maximum = 100;
         vibroEngineSlider.minimum = 0;
         vibroEngineSlider.snapInterval = 1;
         vibroEngineSlider.snapping = true;
         vibroEngineSlider.undefinedDisabled = false;
         vibroEngineSlider.value = 0;
         vibroEngineSlider.visible = true;
         try
         {
            vibroEngineSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroAccelerationSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroAccelerationSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroAccelerationSlider.enabled = true;
         vibroAccelerationSlider.enableInitCallback = false;
         vibroAccelerationSlider.focusable = true;
         vibroAccelerationSlider.liveDragging = true;
         vibroAccelerationSlider.maximum = 100;
         vibroAccelerationSlider.minimum = 0;
         vibroAccelerationSlider.snapInterval = 1;
         vibroAccelerationSlider.snapping = true;
         vibroAccelerationSlider.undefinedDisabled = false;
         vibroAccelerationSlider.value = 0;
         vibroAccelerationSlider.visible = true;
         try
         {
            vibroAccelerationSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroShotsSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroShotsSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroShotsSlider.enabled = true;
         vibroShotsSlider.enableInitCallback = false;
         vibroShotsSlider.focusable = true;
         vibroShotsSlider.liveDragging = true;
         vibroShotsSlider.maximum = 100;
         vibroShotsSlider.minimum = 0;
         vibroShotsSlider.snapInterval = 1;
         vibroShotsSlider.snapping = true;
         vibroShotsSlider.undefinedDisabled = false;
         vibroShotsSlider.value = 0;
         vibroShotsSlider.visible = true;
         try
         {
            vibroShotsSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroHitsSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroHitsSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroHitsSlider.enabled = true;
         vibroHitsSlider.enableInitCallback = false;
         vibroHitsSlider.focusable = true;
         vibroHitsSlider.liveDragging = true;
         vibroHitsSlider.maximum = 100;
         vibroHitsSlider.minimum = 0;
         vibroHitsSlider.snapInterval = 1;
         vibroHitsSlider.snapping = true;
         vibroHitsSlider.undefinedDisabled = false;
         vibroHitsSlider.value = 0;
         vibroHitsSlider.visible = true;
         try
         {
            vibroHitsSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroCollisionsSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroCollisionsSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroCollisionsSlider.enabled = true;
         vibroCollisionsSlider.enableInitCallback = false;
         vibroCollisionsSlider.focusable = true;
         vibroCollisionsSlider.liveDragging = true;
         vibroCollisionsSlider.maximum = 100;
         vibroCollisionsSlider.minimum = 0;
         vibroCollisionsSlider.snapInterval = 1;
         vibroCollisionsSlider.snapping = true;
         vibroCollisionsSlider.undefinedDisabled = false;
         vibroCollisionsSlider.value = 0;
         vibroCollisionsSlider.visible = true;
         try
         {
            vibroCollisionsSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroDamageSlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroDamageSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroDamageSlider.enabled = true;
         vibroDamageSlider.enableInitCallback = false;
         vibroDamageSlider.focusable = true;
         vibroDamageSlider.liveDragging = true;
         vibroDamageSlider.maximum = 100;
         vibroDamageSlider.minimum = 0;
         vibroDamageSlider.snapInterval = 1;
         vibroDamageSlider.snapping = true;
         vibroDamageSlider.undefinedDisabled = false;
         vibroDamageSlider.value = 0;
         vibroDamageSlider.visible = true;
         try
         {
            vibroDamageSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vibroGUISlider_OtherSettings_controls_0() : *
      {
         try
         {
            vibroGUISlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vibroGUISlider.enabled = true;
         vibroGUISlider.enableInitCallback = false;
         vibroGUISlider.focusable = true;
         vibroGUISlider.liveDragging = true;
         vibroGUISlider.maximum = 100;
         vibroGUISlider.minimum = 0;
         vibroGUISlider.snapInterval = 1;
         vibroGUISlider.snapping = true;
         vibroGUISlider.undefinedDisabled = false;
         vibroGUISlider.value = 0;
         vibroGUISlider.visible = true;
         try
         {
            vibroGUISlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
