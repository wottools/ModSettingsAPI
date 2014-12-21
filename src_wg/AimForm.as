package
{
   import net.wg.gui.lobby.settings.SettingsAimForm;
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
   
   public dynamic class AimForm extends SettingsAimForm
   {
      
      public function AimForm()
      {
         super();
         this.__setProp_netValue_AimForm_Layer1_0();
         this.__setProp_netSlider_AimForm_Layer1_0();
         this.__setProp_netTypeDropDown_AimForm_Layer1_0();
         this.__setProp_centralTagValue_AimForm_Layer1_0();
         this.__setProp_centralTagSlider_AimForm_Layer1_0();
         this.__setProp_centralTagTypeDropDown_AimForm_Layer1_0();
         this.__setProp_reloaderValue_AimForm_Layer1_0();
         this.__setProp_reloaderSlider_AimForm_Layer1_0();
         this.__setProp_conditionValue_AimForm_Layer1_0();
         this.__setProp_conditionSlider_AimForm_Layer1_0();
         this.__setProp_mixingValue_AimForm_Layer1_0();
         this.__setProp_mixingSlider_AimForm_Layer1_0();
         this.__setProp_mixingTypeDropDown_AimForm_Layer1_0();
         this.__setProp_gunTagValue_AimForm_Layer1_0();
         this.__setProp_gunTagSlider_AimForm_Layer1_0();
         this.__setProp_gunTagTypeDropDown_AimForm_Layer1_0();
         this.__setProp_cassetteValue_AimForm_Layer1_0();
         this.__setProp_cassetteSlider_AimForm_Layer1_0();
         this.__setProp_reloaderTimerValue_AimForm_Layer2_0();
         this.__setProp_reloaderTimerSlider_AimForm_Layer2_0();
      }
      
      function __setProp_netValue_AimForm_Layer1_0() : *
      {
         try
         {
            netValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         netValue.autoSize = "none";
         netValue.enabled = true;
         netValue.enableInitCallback = false;
         netValue.text = "n/a";
         netValue.textAlign = "right";
         netValue.visible = true;
         try
         {
            netValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_netSlider_AimForm_Layer1_0() : *
      {
         try
         {
            netSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         netSlider.enabled = true;
         netSlider.enableInitCallback = false;
         netSlider.focusable = true;
         netSlider.liveDragging = true;
         netSlider.maximum = 100;
         netSlider.minimum = 0;
         netSlider.snapInterval = 1;
         netSlider.snapping = true;
         netSlider.undefinedDisabled = false;
         netSlider.value = 0.0;
         netSlider.visible = true;
         try
         {
            netSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_netTypeDropDown_AimForm_Layer1_0() : *
      {
         try
         {
            netTypeDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         netTypeDropDown.autoSize = "none";
         netTypeDropDown.dropdown = "DropdownMenu_ScrollingList";
         netTypeDropDown.enabled = true;
         netTypeDropDown.enableInitCallback = false;
         netTypeDropDown.focusable = true;
         netTypeDropDown.itemRenderer = "DropDownListItemRendererSound";
         netTypeDropDown.menuDirection = "down";
         netTypeDropDown.menuMargin = 1;
         netTypeDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         netTypeDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         netTypeDropDown.rowCount = 15;
         netTypeDropDown.menuRowsFixed = false;
         netTypeDropDown.menuWidth = -1;
         netTypeDropDown.menuWrapping = "normal";
         netTypeDropDown.scrollBar = "";
         netTypeDropDown.showEmptyItems = true;
         netTypeDropDown.soundId = "";
         netTypeDropDown.soundType = "";
         netTypeDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         netTypeDropDown.visible = true;
         try
         {
            netTypeDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_centralTagValue_AimForm_Layer1_0() : *
      {
         try
         {
            centralTagValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         centralTagValue.autoSize = "none";
         centralTagValue.enabled = true;
         centralTagValue.enableInitCallback = false;
         centralTagValue.text = "n/a";
         centralTagValue.textAlign = "right";
         centralTagValue.visible = true;
         try
         {
            centralTagValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_centralTagSlider_AimForm_Layer1_0() : *
      {
         try
         {
            centralTagSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         centralTagSlider.enabled = true;
         centralTagSlider.enableInitCallback = false;
         centralTagSlider.focusable = true;
         centralTagSlider.liveDragging = true;
         centralTagSlider.maximum = 100;
         centralTagSlider.minimum = 0;
         centralTagSlider.snapInterval = 1;
         centralTagSlider.snapping = true;
         centralTagSlider.undefinedDisabled = false;
         centralTagSlider.value = 0.0;
         centralTagSlider.visible = true;
         try
         {
            centralTagSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_centralTagTypeDropDown_AimForm_Layer1_0() : *
      {
         try
         {
            centralTagTypeDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         centralTagTypeDropDown.autoSize = "none";
         centralTagTypeDropDown.dropdown = "DropdownMenu_ScrollingList";
         centralTagTypeDropDown.enabled = true;
         centralTagTypeDropDown.enableInitCallback = false;
         centralTagTypeDropDown.focusable = true;
         centralTagTypeDropDown.itemRenderer = "DropDownListItemRendererSound";
         centralTagTypeDropDown.menuDirection = "down";
         centralTagTypeDropDown.menuMargin = 1;
         centralTagTypeDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         centralTagTypeDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         centralTagTypeDropDown.rowCount = 15;
         centralTagTypeDropDown.menuRowsFixed = false;
         centralTagTypeDropDown.menuWidth = -1;
         centralTagTypeDropDown.menuWrapping = "normal";
         centralTagTypeDropDown.scrollBar = "";
         centralTagTypeDropDown.showEmptyItems = true;
         centralTagTypeDropDown.soundId = "";
         centralTagTypeDropDown.soundType = "";
         centralTagTypeDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         centralTagTypeDropDown.visible = true;
         try
         {
            centralTagTypeDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_reloaderValue_AimForm_Layer1_0() : *
      {
         try
         {
            reloaderValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         reloaderValue.autoSize = "none";
         reloaderValue.enabled = true;
         reloaderValue.enableInitCallback = false;
         reloaderValue.text = "n/a";
         reloaderValue.textAlign = "right";
         reloaderValue.visible = true;
         try
         {
            reloaderValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_reloaderSlider_AimForm_Layer1_0() : *
      {
         try
         {
            reloaderSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         reloaderSlider.enabled = true;
         reloaderSlider.enableInitCallback = false;
         reloaderSlider.focusable = true;
         reloaderSlider.liveDragging = true;
         reloaderSlider.maximum = 100;
         reloaderSlider.minimum = 0;
         reloaderSlider.snapInterval = 1;
         reloaderSlider.snapping = true;
         reloaderSlider.undefinedDisabled = false;
         reloaderSlider.value = 0.0;
         reloaderSlider.visible = true;
         try
         {
            reloaderSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_conditionValue_AimForm_Layer1_0() : *
      {
         try
         {
            conditionValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         conditionValue.autoSize = "none";
         conditionValue.enabled = true;
         conditionValue.enableInitCallback = false;
         conditionValue.text = "n/a";
         conditionValue.textAlign = "right";
         conditionValue.visible = true;
         try
         {
            conditionValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_conditionSlider_AimForm_Layer1_0() : *
      {
         try
         {
            conditionSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         conditionSlider.enabled = true;
         conditionSlider.enableInitCallback = false;
         conditionSlider.focusable = true;
         conditionSlider.liveDragging = true;
         conditionSlider.maximum = 100;
         conditionSlider.minimum = 0;
         conditionSlider.snapInterval = 1;
         conditionSlider.snapping = true;
         conditionSlider.undefinedDisabled = false;
         conditionSlider.value = 0.0;
         conditionSlider.visible = true;
         try
         {
            conditionSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mixingValue_AimForm_Layer1_0() : *
      {
         try
         {
            mixingValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mixingValue.autoSize = "none";
         mixingValue.enabled = true;
         mixingValue.enableInitCallback = false;
         mixingValue.text = "n/a";
         mixingValue.textAlign = "right";
         mixingValue.visible = true;
         try
         {
            mixingValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mixingSlider_AimForm_Layer1_0() : *
      {
         try
         {
            mixingSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mixingSlider.enabled = true;
         mixingSlider.enableInitCallback = false;
         mixingSlider.focusable = true;
         mixingSlider.liveDragging = true;
         mixingSlider.maximum = 100;
         mixingSlider.minimum = 0;
         mixingSlider.snapInterval = 1;
         mixingSlider.snapping = true;
         mixingSlider.undefinedDisabled = false;
         mixingSlider.value = 0.0;
         mixingSlider.visible = true;
         try
         {
            mixingSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_mixingTypeDropDown_AimForm_Layer1_0() : *
      {
         try
         {
            mixingTypeDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         mixingTypeDropDown.autoSize = "none";
         mixingTypeDropDown.dropdown = "DropdownMenu_ScrollingList";
         mixingTypeDropDown.enabled = true;
         mixingTypeDropDown.enableInitCallback = false;
         mixingTypeDropDown.focusable = true;
         mixingTypeDropDown.itemRenderer = "DropDownListItemRendererSound";
         mixingTypeDropDown.menuDirection = "down";
         mixingTypeDropDown.menuMargin = 1;
         mixingTypeDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         mixingTypeDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         mixingTypeDropDown.rowCount = 15;
         mixingTypeDropDown.menuRowsFixed = false;
         mixingTypeDropDown.menuWidth = 350;
         mixingTypeDropDown.menuWrapping = "normal";
         mixingTypeDropDown.scrollBar = "";
         mixingTypeDropDown.showEmptyItems = true;
         mixingTypeDropDown.soundId = "";
         mixingTypeDropDown.soundType = "";
         mixingTypeDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         mixingTypeDropDown.visible = true;
         try
         {
            mixingTypeDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gunTagValue_AimForm_Layer1_0() : *
      {
         try
         {
            gunTagValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gunTagValue.autoSize = "none";
         gunTagValue.enabled = true;
         gunTagValue.enableInitCallback = false;
         gunTagValue.text = "n/a";
         gunTagValue.textAlign = "right";
         gunTagValue.visible = true;
         try
         {
            gunTagValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gunTagSlider_AimForm_Layer1_0() : *
      {
         try
         {
            gunTagSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gunTagSlider.enabled = true;
         gunTagSlider.enableInitCallback = false;
         gunTagSlider.focusable = true;
         gunTagSlider.liveDragging = true;
         gunTagSlider.maximum = 100;
         gunTagSlider.minimum = 0;
         gunTagSlider.snapInterval = 1;
         gunTagSlider.snapping = true;
         gunTagSlider.undefinedDisabled = false;
         gunTagSlider.value = 0.0;
         gunTagSlider.visible = true;
         try
         {
            gunTagSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gunTagTypeDropDown_AimForm_Layer1_0() : *
      {
         try
         {
            gunTagTypeDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gunTagTypeDropDown.autoSize = "none";
         gunTagTypeDropDown.dropdown = "DropdownMenu_ScrollingList";
         gunTagTypeDropDown.enabled = true;
         gunTagTypeDropDown.enableInitCallback = false;
         gunTagTypeDropDown.focusable = true;
         gunTagTypeDropDown.itemRenderer = "DropDownListItemRendererSound";
         gunTagTypeDropDown.menuDirection = "up";
         gunTagTypeDropDown.menuMargin = 1;
         gunTagTypeDropDown.inspectableMenuOffset = {
            "top":0,
            "right":0,
            "bottom":4,
            "left":3
         };
         gunTagTypeDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         gunTagTypeDropDown.rowCount = 15;
         gunTagTypeDropDown.menuRowsFixed = false;
         gunTagTypeDropDown.menuWidth = 350;
         gunTagTypeDropDown.menuWrapping = "normal";
         gunTagTypeDropDown.scrollBar = "";
         gunTagTypeDropDown.showEmptyItems = true;
         gunTagTypeDropDown.soundId = "";
         gunTagTypeDropDown.soundType = "";
         gunTagTypeDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         gunTagTypeDropDown.visible = true;
         try
         {
            gunTagTypeDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_cassetteValue_AimForm_Layer1_0() : *
      {
         try
         {
            cassetteValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         cassetteValue.autoSize = "none";
         cassetteValue.enabled = true;
         cassetteValue.enableInitCallback = false;
         cassetteValue.text = "n/a";
         cassetteValue.textAlign = "right";
         cassetteValue.visible = true;
         try
         {
            cassetteValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_cassetteSlider_AimForm_Layer1_0() : *
      {
         try
         {
            cassetteSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         cassetteSlider.enabled = true;
         cassetteSlider.enableInitCallback = false;
         cassetteSlider.focusable = true;
         cassetteSlider.liveDragging = true;
         cassetteSlider.maximum = 100;
         cassetteSlider.minimum = 0;
         cassetteSlider.snapInterval = 1;
         cassetteSlider.snapping = true;
         cassetteSlider.undefinedDisabled = false;
         cassetteSlider.value = 0.0;
         cassetteSlider.visible = true;
         try
         {
            cassetteSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_reloaderTimerValue_AimForm_Layer2_0() : *
      {
         try
         {
            reloaderTimerValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         reloaderTimerValue.autoSize = "none";
         reloaderTimerValue.enabled = true;
         reloaderTimerValue.enableInitCallback = false;
         reloaderTimerValue.text = "n/a";
         reloaderTimerValue.textAlign = "right";
         reloaderTimerValue.visible = true;
         try
         {
            reloaderTimerValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_reloaderTimerSlider_AimForm_Layer2_0() : *
      {
         try
         {
            reloaderTimerSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         reloaderTimerSlider.enabled = true;
         reloaderTimerSlider.enableInitCallback = false;
         reloaderTimerSlider.focusable = true;
         reloaderTimerSlider.liveDragging = true;
         reloaderTimerSlider.maximum = 100;
         reloaderTimerSlider.minimum = 0;
         reloaderTimerSlider.snapInterval = 1;
         reloaderTimerSlider.snapping = true;
         reloaderTimerSlider.undefinedDisabled = false;
         reloaderTimerSlider.value = 0.0;
         reloaderTimerSlider.visible = true;
         try
         {
            reloaderTimerSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
