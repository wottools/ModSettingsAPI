package
{
   import net.wg.gui.lobby.settings.SoundSettings;
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
   
   public dynamic class SoundSettings extends net.wg.gui.lobby.settings.SoundSettings
   {
      
      public function SoundSettings()
      {
         super();
         this.__setProp_volumeFieldSet_SoundSettings_fieldset_0();
         this.__setProp_voiceConnectFieldSet_SoundSettings_fieldset_0();
         this.__setProp_alternativeVoicesFieldSet_SoundSettings_fieldset_0();
         this.__setProp_PTTKeyInput_SoundSettings_keyInput_0();
         this.__setProp_masterVolumeValue_SoundSettings_labels_0();
         this.__setProp_musicVolumeValue_SoundSettings_labels_0();
         this.__setProp_voiceVolumeValue_SoundSettings_labels_0();
         this.__setProp_vehiclesVolumeValue_SoundSettings_labels_0();
         this.__setProp_effectsVolumeValue_SoundSettings_labels_0();
         this.__setProp_guiVolumeValue_SoundSettings_labels_0();
         this.__setProp_ambientVolumeValue_SoundSettings_labels_0();
         this.__setProp_masterVivoxVolumeValue_SoundSettings_labels_0();
         this.__setProp_micVivoxVolumeValue_SoundSettings_labels_0();
         this.__setProp_masterFadeVivoxVolumeValue_SoundSettings_labels_0();
         this.__setProp_masterVolumeSlider_SoundSettings_ui_0();
         this.__setProp_musicVolumeSlider_SoundSettings_ui_0();
         this.__setProp_voiceVolumeSlider_SoundSettings_ui_0();
         this.__setProp_vehiclesVolumeSlider_SoundSettings_ui_0();
         this.__setProp_effectsVolumeSlider_SoundSettings_ui_0();
         this.__setProp_guiVolumeSlider_SoundSettings_ui_0();
         this.__setProp_ambientVolumeSlider_SoundSettings_ui_0();
         this.__setProp_nationalVoicesCheckbox_SoundSettings_ui_0();
         this.__setProp_enableVoIPCheckbox_SoundSettings_ui_0();
         this.__setProp_masterVivoxVolumeSlider_SoundSettings_ui_0();
         this.__setProp_micVivoxVolumeSlider_SoundSettings_ui_0();
         this.__setProp_masterFadeVivoxVolumeSlider_SoundSettings_ui_0();
         this.__setProp_captureDeviceDropDown_SoundSettings_ui_0();
         this.__setProp_alternativeVoicesDropDown_SoundSettings_ui_0();
         this.__setProp_testAlternativeVoicesButton_SoundSettings_ui_0();
      }
      
      function __setProp_volumeFieldSet_SoundSettings_fieldset_0() : *
      {
         try
         {
            volumeFieldSet["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         volumeFieldSet.enabled = true;
         volumeFieldSet.enableInitCallback = false;
         volumeFieldSet.label = "";
         volumeFieldSet.margin = 5;
         volumeFieldSet.showLabel = true;
         volumeFieldSet.visible = true;
         try
         {
            volumeFieldSet["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_voiceConnectFieldSet_SoundSettings_fieldset_0() : *
      {
         try
         {
            voiceConnectFieldSet["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         voiceConnectFieldSet.enabled = true;
         voiceConnectFieldSet.enableInitCallback = false;
         voiceConnectFieldSet.label = "";
         voiceConnectFieldSet.margin = 5;
         voiceConnectFieldSet.showLabel = true;
         voiceConnectFieldSet.visible = true;
         try
         {
            voiceConnectFieldSet["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_alternativeVoicesFieldSet_SoundSettings_fieldset_0() : *
      {
         try
         {
            alternativeVoicesFieldSet["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         alternativeVoicesFieldSet.enabled = true;
         alternativeVoicesFieldSet.enableInitCallback = false;
         alternativeVoicesFieldSet.label = "";
         alternativeVoicesFieldSet.margin = 5;
         alternativeVoicesFieldSet.showLabel = true;
         alternativeVoicesFieldSet.visible = true;
         try
         {
            alternativeVoicesFieldSet["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_PTTKeyInput_SoundSettings_keyInput_0() : *
      {
         try
         {
            PTTKeyInput["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         PTTKeyInput.enabled = false;
         PTTKeyInput.focusable = true;
         PTTKeyInput.keys = ["q"];
         PTTKeyInput.soundId = "";
         PTTKeyInput.soundType = "normal";
         PTTKeyInput.startDefKey = 81;
         PTTKeyInput.visible = true;
         try
         {
            PTTKeyInput["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_masterVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            masterVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         masterVolumeValue.autoSize = "none";
         masterVolumeValue.enabled = true;
         masterVolumeValue.enableInitCallback = false;
         masterVolumeValue.text = "n/a";
         masterVolumeValue.textAlign = "none";
         masterVolumeValue.visible = true;
         try
         {
            masterVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_musicVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            musicVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         musicVolumeValue.autoSize = "none";
         musicVolumeValue.enabled = true;
         musicVolumeValue.enableInitCallback = false;
         musicVolumeValue.text = "n/a";
         musicVolumeValue.textAlign = "none";
         musicVolumeValue.visible = true;
         try
         {
            musicVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_voiceVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            voiceVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         voiceVolumeValue.autoSize = "none";
         voiceVolumeValue.enabled = true;
         voiceVolumeValue.enableInitCallback = false;
         voiceVolumeValue.text = "n/a";
         voiceVolumeValue.textAlign = "none";
         voiceVolumeValue.visible = true;
         try
         {
            voiceVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vehiclesVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            vehiclesVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vehiclesVolumeValue.autoSize = "none";
         vehiclesVolumeValue.enabled = true;
         vehiclesVolumeValue.enableInitCallback = false;
         vehiclesVolumeValue.text = "n/a";
         vehiclesVolumeValue.textAlign = "none";
         vehiclesVolumeValue.visible = true;
         try
         {
            vehiclesVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_effectsVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            effectsVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         effectsVolumeValue.autoSize = "none";
         effectsVolumeValue.enabled = true;
         effectsVolumeValue.enableInitCallback = false;
         effectsVolumeValue.text = "n/a";
         effectsVolumeValue.textAlign = "none";
         effectsVolumeValue.visible = true;
         try
         {
            effectsVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_guiVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            guiVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         guiVolumeValue.autoSize = "none";
         guiVolumeValue.enabled = true;
         guiVolumeValue.enableInitCallback = false;
         guiVolumeValue.text = "n/a";
         guiVolumeValue.textAlign = "none";
         guiVolumeValue.visible = true;
         try
         {
            guiVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_ambientVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            ambientVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         ambientVolumeValue.autoSize = "none";
         ambientVolumeValue.enabled = true;
         ambientVolumeValue.enableInitCallback = false;
         ambientVolumeValue.text = "n/a";
         ambientVolumeValue.textAlign = "none";
         ambientVolumeValue.visible = true;
         try
         {
            ambientVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_masterVivoxVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            masterVivoxVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         masterVivoxVolumeValue.autoSize = "none";
         masterVivoxVolumeValue.enabled = true;
         masterVivoxVolumeValue.enableInitCallback = false;
         masterVivoxVolumeValue.text = "n/a";
         masterVivoxVolumeValue.textAlign = "none";
         masterVivoxVolumeValue.visible = true;
         try
         {
            masterVivoxVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_micVivoxVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            micVivoxVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         micVivoxVolumeValue.autoSize = "none";
         micVivoxVolumeValue.enabled = true;
         micVivoxVolumeValue.enableInitCallback = false;
         micVivoxVolumeValue.text = "n/a";
         micVivoxVolumeValue.textAlign = "none";
         micVivoxVolumeValue.visible = true;
         try
         {
            micVivoxVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_masterFadeVivoxVolumeValue_SoundSettings_labels_0() : *
      {
         try
         {
            masterFadeVivoxVolumeValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         masterFadeVivoxVolumeValue.autoSize = "none";
         masterFadeVivoxVolumeValue.enabled = true;
         masterFadeVivoxVolumeValue.enableInitCallback = false;
         masterFadeVivoxVolumeValue.text = "n/a";
         masterFadeVivoxVolumeValue.textAlign = "none";
         masterFadeVivoxVolumeValue.visible = true;
         try
         {
            masterFadeVivoxVolumeValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_masterVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            masterVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         masterVolumeSlider.enabled = true;
         masterVolumeSlider.enableInitCallback = false;
         masterVolumeSlider.focusable = true;
         masterVolumeSlider.liveDragging = true;
         masterVolumeSlider.maximum = 100;
         masterVolumeSlider.minimum = 0;
         masterVolumeSlider.snapInterval = 1;
         masterVolumeSlider.snapping = true;
         masterVolumeSlider.undefinedDisabled = false;
         masterVolumeSlider.value = 0.0;
         masterVolumeSlider.visible = true;
         try
         {
            masterVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_musicVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            musicVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         musicVolumeSlider.enabled = true;
         musicVolumeSlider.enableInitCallback = false;
         musicVolumeSlider.focusable = true;
         musicVolumeSlider.liveDragging = true;
         musicVolumeSlider.maximum = 100;
         musicVolumeSlider.minimum = 0;
         musicVolumeSlider.snapInterval = 1;
         musicVolumeSlider.snapping = true;
         musicVolumeSlider.undefinedDisabled = false;
         musicVolumeSlider.value = 0.0;
         musicVolumeSlider.visible = true;
         try
         {
            musicVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_voiceVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            voiceVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         voiceVolumeSlider.enabled = true;
         voiceVolumeSlider.enableInitCallback = false;
         voiceVolumeSlider.focusable = true;
         voiceVolumeSlider.liveDragging = true;
         voiceVolumeSlider.maximum = 100;
         voiceVolumeSlider.minimum = 0;
         voiceVolumeSlider.snapInterval = 1;
         voiceVolumeSlider.snapping = true;
         voiceVolumeSlider.undefinedDisabled = false;
         voiceVolumeSlider.value = 0.0;
         voiceVolumeSlider.visible = true;
         try
         {
            voiceVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vehiclesVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            vehiclesVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vehiclesVolumeSlider.enabled = true;
         vehiclesVolumeSlider.enableInitCallback = false;
         vehiclesVolumeSlider.focusable = true;
         vehiclesVolumeSlider.liveDragging = true;
         vehiclesVolumeSlider.maximum = 100;
         vehiclesVolumeSlider.minimum = 0;
         vehiclesVolumeSlider.snapInterval = 1;
         vehiclesVolumeSlider.snapping = true;
         vehiclesVolumeSlider.undefinedDisabled = false;
         vehiclesVolumeSlider.value = 0.0;
         vehiclesVolumeSlider.visible = true;
         try
         {
            vehiclesVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_effectsVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            effectsVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         effectsVolumeSlider.enabled = true;
         effectsVolumeSlider.enableInitCallback = false;
         effectsVolumeSlider.focusable = true;
         effectsVolumeSlider.liveDragging = true;
         effectsVolumeSlider.maximum = 100;
         effectsVolumeSlider.minimum = 0;
         effectsVolumeSlider.snapInterval = 1;
         effectsVolumeSlider.snapping = true;
         effectsVolumeSlider.undefinedDisabled = false;
         effectsVolumeSlider.value = 0.0;
         effectsVolumeSlider.visible = true;
         try
         {
            effectsVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_guiVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            guiVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         guiVolumeSlider.enabled = true;
         guiVolumeSlider.enableInitCallback = false;
         guiVolumeSlider.focusable = true;
         guiVolumeSlider.liveDragging = true;
         guiVolumeSlider.maximum = 100;
         guiVolumeSlider.minimum = 0;
         guiVolumeSlider.snapInterval = 1;
         guiVolumeSlider.snapping = true;
         guiVolumeSlider.undefinedDisabled = false;
         guiVolumeSlider.value = 0.0;
         guiVolumeSlider.visible = true;
         try
         {
            guiVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_ambientVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            ambientVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         ambientVolumeSlider.enabled = true;
         ambientVolumeSlider.enableInitCallback = false;
         ambientVolumeSlider.focusable = true;
         ambientVolumeSlider.liveDragging = true;
         ambientVolumeSlider.maximum = 100;
         ambientVolumeSlider.minimum = 0;
         ambientVolumeSlider.snapInterval = 1;
         ambientVolumeSlider.snapping = true;
         ambientVolumeSlider.undefinedDisabled = false;
         ambientVolumeSlider.value = 0.0;
         ambientVolumeSlider.visible = true;
         try
         {
            ambientVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_nationalVoicesCheckbox_SoundSettings_ui_0() : *
      {
         try
         {
            nationalVoicesCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         nationalVoicesCheckbox.autoSize = "none";
         nationalVoicesCheckbox.data = "";
         nationalVoicesCheckbox.disabledTextAlpha = 0.5;
         nationalVoicesCheckbox.enabled = true;
         nationalVoicesCheckbox.enableInitCallback = false;
         nationalVoicesCheckbox.focusable = true;
         nationalVoicesCheckbox.infoIcoType = "";
         nationalVoicesCheckbox.label = "";
         nationalVoicesCheckbox.selected = false;
         nationalVoicesCheckbox.soundId = "";
         nationalVoicesCheckbox.soundType = "";
         nationalVoicesCheckbox.textColor = 9868935;
         nationalVoicesCheckbox.textFont = "$TextFont";
         nationalVoicesCheckbox.textSize = 12;
         nationalVoicesCheckbox.toolTip = "";
         nationalVoicesCheckbox.visible = false;
         try
         {
            nationalVoicesCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enableVoIPCheckbox_SoundSettings_ui_0() : *
      {
         try
         {
            enableVoIPCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enableVoIPCheckbox.autoSize = "none";
         enableVoIPCheckbox.data = "";
         enableVoIPCheckbox.disabledTextAlpha = 0.5;
         enableVoIPCheckbox.enabled = true;
         enableVoIPCheckbox.enableInitCallback = false;
         enableVoIPCheckbox.focusable = true;
         enableVoIPCheckbox.infoIcoType = "";
         enableVoIPCheckbox.label = "";
         enableVoIPCheckbox.selected = false;
         enableVoIPCheckbox.soundId = "";
         enableVoIPCheckbox.soundType = "";
         enableVoIPCheckbox.textColor = 9868935;
         enableVoIPCheckbox.textFont = "$TextFont";
         enableVoIPCheckbox.textSize = 12;
         enableVoIPCheckbox.toolTip = "";
         enableVoIPCheckbox.visible = true;
         try
         {
            enableVoIPCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_masterVivoxVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            masterVivoxVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         masterVivoxVolumeSlider.enabled = true;
         masterVivoxVolumeSlider.enableInitCallback = false;
         masterVivoxVolumeSlider.focusable = true;
         masterVivoxVolumeSlider.liveDragging = true;
         masterVivoxVolumeSlider.maximum = 100;
         masterVivoxVolumeSlider.minimum = 0;
         masterVivoxVolumeSlider.snapInterval = 1;
         masterVivoxVolumeSlider.snapping = true;
         masterVivoxVolumeSlider.undefinedDisabled = false;
         masterVivoxVolumeSlider.value = 0.0;
         masterVivoxVolumeSlider.visible = true;
         try
         {
            masterVivoxVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_micVivoxVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            micVivoxVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         micVivoxVolumeSlider.enabled = true;
         micVivoxVolumeSlider.enableInitCallback = false;
         micVivoxVolumeSlider.focusable = true;
         micVivoxVolumeSlider.liveDragging = true;
         micVivoxVolumeSlider.maximum = 100;
         micVivoxVolumeSlider.minimum = 0;
         micVivoxVolumeSlider.snapInterval = 1;
         micVivoxVolumeSlider.snapping = true;
         micVivoxVolumeSlider.undefinedDisabled = false;
         micVivoxVolumeSlider.value = 0.0;
         micVivoxVolumeSlider.visible = true;
         try
         {
            micVivoxVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_masterFadeVivoxVolumeSlider_SoundSettings_ui_0() : *
      {
         try
         {
            masterFadeVivoxVolumeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         masterFadeVivoxVolumeSlider.enabled = true;
         masterFadeVivoxVolumeSlider.enableInitCallback = false;
         masterFadeVivoxVolumeSlider.focusable = true;
         masterFadeVivoxVolumeSlider.liveDragging = true;
         masterFadeVivoxVolumeSlider.maximum = 100;
         masterFadeVivoxVolumeSlider.minimum = 0;
         masterFadeVivoxVolumeSlider.snapInterval = 1;
         masterFadeVivoxVolumeSlider.snapping = true;
         masterFadeVivoxVolumeSlider.undefinedDisabled = false;
         masterFadeVivoxVolumeSlider.value = 0.0;
         masterFadeVivoxVolumeSlider.visible = true;
         try
         {
            masterFadeVivoxVolumeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_captureDeviceDropDown_SoundSettings_ui_0() : *
      {
         try
         {
            captureDeviceDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         captureDeviceDropDown.autoSize = "none";
         captureDeviceDropDown.dropdown = "DropdownMenu_ScrollingList";
         captureDeviceDropDown.enabled = false;
         captureDeviceDropDown.enableInitCallback = false;
         captureDeviceDropDown.focusable = true;
         captureDeviceDropDown.itemRenderer = "DropDownListItemRendererSound";
         captureDeviceDropDown.menuDirection = "down";
         captureDeviceDropDown.menuMargin = 1;
         captureDeviceDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":-106
         };
         captureDeviceDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         captureDeviceDropDown.rowCount = 15;
         captureDeviceDropDown.menuRowsFixed = false;
         captureDeviceDropDown.menuWidth = 275;
         captureDeviceDropDown.menuWrapping = "normal";
         captureDeviceDropDown.scrollBar = "";
         captureDeviceDropDown.showEmptyItems = true;
         captureDeviceDropDown.soundId = "";
         captureDeviceDropDown.soundType = "";
         captureDeviceDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         captureDeviceDropDown.visible = true;
         try
         {
            captureDeviceDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_alternativeVoicesDropDown_SoundSettings_ui_0() : *
      {
         try
         {
            alternativeVoicesDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         alternativeVoicesDropDown.autoSize = "none";
         alternativeVoicesDropDown.dropdown = "DropdownMenu_ScrollingList";
         alternativeVoicesDropDown.enabled = false;
         alternativeVoicesDropDown.enableInitCallback = false;
         alternativeVoicesDropDown.focusable = true;
         alternativeVoicesDropDown.itemRenderer = "DropDownListItemRendererSound";
         alternativeVoicesDropDown.menuDirection = "down";
         alternativeVoicesDropDown.menuMargin = 1;
         alternativeVoicesDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         alternativeVoicesDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         alternativeVoicesDropDown.rowCount = 15;
         alternativeVoicesDropDown.menuRowsFixed = false;
         alternativeVoicesDropDown.menuWidth = -1;
         alternativeVoicesDropDown.menuWrapping = "normal";
         alternativeVoicesDropDown.scrollBar = "";
         alternativeVoicesDropDown.showEmptyItems = true;
         alternativeVoicesDropDown.soundId = "";
         alternativeVoicesDropDown.soundType = "";
         alternativeVoicesDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         alternativeVoicesDropDown.visible = true;
         try
         {
            alternativeVoicesDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_testAlternativeVoicesButton_SoundSettings_ui_0() : *
      {
         try
         {
            testAlternativeVoicesButton["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         testAlternativeVoicesButton.autoRepeat = false;
         testAlternativeVoicesButton.autoSize = "none";
         testAlternativeVoicesButton.data = "";
         testAlternativeVoicesButton.inspectableDisabledFillPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         testAlternativeVoicesButton.enabled = true;
         testAlternativeVoicesButton.enableInitCallback = false;
         testAlternativeVoicesButton.focusable = true;
         testAlternativeVoicesButton.helpConnectorLength = 12;
         testAlternativeVoicesButton.helpDirection = "T";
         testAlternativeVoicesButton.helpText = "";
         testAlternativeVoicesButton.label = "";
         testAlternativeVoicesButton.paddingHorizontal = 5;
         testAlternativeVoicesButton.selected = false;
         testAlternativeVoicesButton.soundId = "";
         testAlternativeVoicesButton.soundType = "iconButton";
         testAlternativeVoicesButton.toggle = false;
         testAlternativeVoicesButton.tooltip = "";
         testAlternativeVoicesButton.visible = true;
         try
         {
            testAlternativeVoicesButton["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
