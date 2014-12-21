package
{
   import net.wg.gui.lobby.settings.ScreenSettingsForm;
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
   
   public dynamic class ScreenSettingsFormUI extends ScreenSettingsForm
   {
      
      public function ScreenSettingsFormUI()
      {
         super();
         this.__setProp_monitorLabel_ScreenSettingsForm_labels_0();
         this.__setProp_sizesLabel_ScreenSettingsForm_labels_0();
         this.__setProp_aspectRatioLabel_ScreenSettingsForm_labels_0();
         this.__setProp_smoothingLabel_ScreenSettingsForm_labels_0();
         this.__setProp_gammaLabel_ScreenSettingsForm_labels_0();
         this.__setProp_refreshRateLabel_ScreenSettingsForm_labels_0();
         this.__setProp_COLOR_GRADING_TECHNIQUELabel_ScreenSettingsForm_labels_0();
         this.__setProp_colorFilterIntensityLabel_ScreenSettingsForm_labels_0();
         this.__setProp_fovLabel_ScreenSettingsForm_labels_0();
         this.__setProp_colorFilterIntensityValue_ScreenSettingsForm_labels_0();
         this.__setProp_HAVOK_ENABLEDLabel_ScreenSettingsForm_labels_0();
         this.__setProp_HAVOK_ENABLEDDropDown_ScreenSettingsForm_labels_0();
         this.__setProp_monitorDropDown_ScreenSettingsForm_controls_0();
         this.__setProp_sizesDropDown_ScreenSettingsForm_controls_0();
         this.__setProp_aspectRatioDropDown_ScreenSettingsForm_controls_0();
         this.__setProp_smoothingDropDown_ScreenSettingsForm_controls_0();
         this.__setProp_gammaSlider_ScreenSettingsForm_controls_0();
         this.__setProp_fullScreenCheckbox_ScreenSettingsForm_controls_0();
         this.__setProp_vertSyncCheckbox_ScreenSettingsForm_controls_0();
         this.__setProp_isColorBlindCheckbox_ScreenSettingsForm_controls_0();
         this.__setProp_refreshRateDropDown_ScreenSettingsForm_controls_0();
         this.__setProp_COLOR_GRADING_TECHNIQUEDropDown_ScreenSettingsForm_controls_0();
         this.__setProp_colorFilterIntensitySlider_ScreenSettingsForm_controls_0();
         this.__setProp_fovRangeSlider_ScreenSettingsForm_controls_0();
         this.__setProp_dynamicFovCheckbox_ScreenSettingsForm_controls_0();
         this.__setProp_tripleBufferedCheckbox_ScreenSettingsForm_controls_0();
      }
      
      function __setProp_monitorLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            monitorLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         monitorLabel.autoSize = "none";
         monitorLabel.enabled = true;
         monitorLabel.enableInitCallback = false;
         monitorLabel.text = "n/a";
         monitorLabel.textAlign = "none";
         monitorLabel.visible = true;
         try
         {
            monitorLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_sizesLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            sizesLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         sizesLabel.autoSize = "none";
         sizesLabel.enabled = true;
         sizesLabel.enableInitCallback = false;
         sizesLabel.text = "n/a";
         sizesLabel.textAlign = "none";
         sizesLabel.visible = true;
         try
         {
            sizesLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_aspectRatioLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            aspectRatioLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         aspectRatioLabel.autoSize = "none";
         aspectRatioLabel.enabled = true;
         aspectRatioLabel.enableInitCallback = false;
         aspectRatioLabel.text = "n/a";
         aspectRatioLabel.textAlign = "none";
         aspectRatioLabel.visible = true;
         try
         {
            aspectRatioLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_smoothingLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            smoothingLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         smoothingLabel.autoSize = "none";
         smoothingLabel.enabled = true;
         smoothingLabel.enableInitCallback = false;
         smoothingLabel.text = "n/a";
         smoothingLabel.textAlign = "none";
         smoothingLabel.visible = true;
         try
         {
            smoothingLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gammaLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            gammaLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gammaLabel.autoSize = "none";
         gammaLabel.enabled = true;
         gammaLabel.enableInitCallback = false;
         gammaLabel.text = "n/a";
         gammaLabel.textAlign = "none";
         gammaLabel.visible = true;
         try
         {
            gammaLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_refreshRateLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            refreshRateLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         refreshRateLabel.autoSize = "none";
         refreshRateLabel.enabled = true;
         refreshRateLabel.enableInitCallback = false;
         refreshRateLabel.text = "n/a";
         refreshRateLabel.textAlign = "none";
         refreshRateLabel.visible = true;
         try
         {
            refreshRateLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_COLOR_GRADING_TECHNIQUELabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            COLOR_GRADING_TECHNIQUELabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         COLOR_GRADING_TECHNIQUELabel.autoSize = "none";
         COLOR_GRADING_TECHNIQUELabel.enabled = true;
         COLOR_GRADING_TECHNIQUELabel.enableInitCallback = false;
         COLOR_GRADING_TECHNIQUELabel.text = "n/a";
         COLOR_GRADING_TECHNIQUELabel.textAlign = "none";
         COLOR_GRADING_TECHNIQUELabel.visible = true;
         try
         {
            COLOR_GRADING_TECHNIQUELabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_colorFilterIntensityLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            colorFilterIntensityLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         colorFilterIntensityLabel.autoSize = "none";
         colorFilterIntensityLabel.enabled = true;
         colorFilterIntensityLabel.enableInitCallback = false;
         colorFilterIntensityLabel.text = "n/a";
         colorFilterIntensityLabel.textAlign = "none";
         colorFilterIntensityLabel.visible = true;
         try
         {
            colorFilterIntensityLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_fovLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            fovLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fovLabel.autoSize = "none";
         fovLabel.enabled = true;
         fovLabel.enableInitCallback = false;
         fovLabel.text = "n/a";
         fovLabel.textAlign = "none";
         fovLabel.visible = true;
         try
         {
            fovLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_colorFilterIntensityValue_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            colorFilterIntensityValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         colorFilterIntensityValue.autoSize = "none";
         colorFilterIntensityValue.enabled = true;
         colorFilterIntensityValue.enableInitCallback = false;
         colorFilterIntensityValue.text = "";
         colorFilterIntensityValue.textAlign = "right";
         colorFilterIntensityValue.visible = true;
         try
         {
            colorFilterIntensityValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_HAVOK_ENABLEDLabel_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            HAVOK_ENABLEDLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         HAVOK_ENABLEDLabel.autoSize = "none";
         HAVOK_ENABLEDLabel.enabled = true;
         HAVOK_ENABLEDLabel.enableInitCallback = false;
         HAVOK_ENABLEDLabel.text = "n/a";
         HAVOK_ENABLEDLabel.textAlign = "none";
         HAVOK_ENABLEDLabel.visible = false;
         try
         {
            HAVOK_ENABLEDLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_HAVOK_ENABLEDDropDown_ScreenSettingsForm_labels_0() : *
      {
         try
         {
            HAVOK_ENABLEDDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         HAVOK_ENABLEDDropDown.autoSize = "none";
         HAVOK_ENABLEDDropDown.dropdown = "DropdownMenu_ScrollingList";
         HAVOK_ENABLEDDropDown.enabled = true;
         HAVOK_ENABLEDDropDown.enableInitCallback = false;
         HAVOK_ENABLEDDropDown.focusable = true;
         HAVOK_ENABLEDDropDown.itemRenderer = "DropDownListItemRendererSound";
         HAVOK_ENABLEDDropDown.menuDirection = "down";
         HAVOK_ENABLEDDropDown.menuMargin = 1;
         HAVOK_ENABLEDDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         HAVOK_ENABLEDDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         HAVOK_ENABLEDDropDown.rowCount = 15;
         HAVOK_ENABLEDDropDown.menuRowsFixed = false;
         HAVOK_ENABLEDDropDown.menuWidth = -1;
         HAVOK_ENABLEDDropDown.menuWrapping = "normal";
         HAVOK_ENABLEDDropDown.scrollBar = "ScrollBar";
         HAVOK_ENABLEDDropDown.showEmptyItems = false;
         HAVOK_ENABLEDDropDown.soundId = "";
         HAVOK_ENABLEDDropDown.soundType = "";
         HAVOK_ENABLEDDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         HAVOK_ENABLEDDropDown.visible = false;
         try
         {
            HAVOK_ENABLEDDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_monitorDropDown_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            monitorDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         monitorDropDown.autoSize = "none";
         monitorDropDown.dropdown = "DropdownMenu_ScrollingList";
         monitorDropDown.enabled = true;
         monitorDropDown.enableInitCallback = false;
         monitorDropDown.focusable = true;
         monitorDropDown.itemRenderer = "DropDownListItemRendererSound";
         monitorDropDown.menuDirection = "down";
         monitorDropDown.menuMargin = 1;
         monitorDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         monitorDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         monitorDropDown.rowCount = 15;
         monitorDropDown.menuRowsFixed = false;
         monitorDropDown.menuWidth = -1;
         monitorDropDown.menuWrapping = "normal";
         monitorDropDown.scrollBar = "";
         monitorDropDown.showEmptyItems = false;
         monitorDropDown.soundId = "";
         monitorDropDown.soundType = "";
         monitorDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         monitorDropDown.visible = true;
         try
         {
            monitorDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_sizesDropDown_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            sizesDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         sizesDropDown.autoSize = "none";
         sizesDropDown.dropdown = "DropdownMenu_ScrollingList";
         sizesDropDown.enabled = true;
         sizesDropDown.enableInitCallback = false;
         sizesDropDown.focusable = true;
         sizesDropDown.itemRenderer = "DropDownListItemRendererSound";
         sizesDropDown.menuDirection = "down";
         sizesDropDown.menuMargin = 1;
         sizesDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         sizesDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         sizesDropDown.rowCount = 15;
         sizesDropDown.menuRowsFixed = false;
         sizesDropDown.menuWidth = -1;
         sizesDropDown.menuWrapping = "normal";
         sizesDropDown.scrollBar = "ScrollBar";
         sizesDropDown.showEmptyItems = false;
         sizesDropDown.soundId = "";
         sizesDropDown.soundType = "";
         sizesDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         sizesDropDown.visible = true;
         try
         {
            sizesDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_aspectRatioDropDown_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            aspectRatioDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         aspectRatioDropDown.autoSize = "none";
         aspectRatioDropDown.dropdown = "DropdownMenu_ScrollingList";
         aspectRatioDropDown.enabled = true;
         aspectRatioDropDown.enableInitCallback = false;
         aspectRatioDropDown.focusable = true;
         aspectRatioDropDown.itemRenderer = "DropDownListItemRendererSound";
         aspectRatioDropDown.menuDirection = "down";
         aspectRatioDropDown.menuMargin = 1;
         aspectRatioDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         aspectRatioDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         aspectRatioDropDown.rowCount = 15;
         aspectRatioDropDown.menuRowsFixed = false;
         aspectRatioDropDown.menuWidth = -1;
         aspectRatioDropDown.menuWrapping = "normal";
         aspectRatioDropDown.scrollBar = "ScrollBar";
         aspectRatioDropDown.showEmptyItems = false;
         aspectRatioDropDown.soundId = "";
         aspectRatioDropDown.soundType = "";
         aspectRatioDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         aspectRatioDropDown.visible = true;
         try
         {
            aspectRatioDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_smoothingDropDown_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            smoothingDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         smoothingDropDown.autoSize = "none";
         smoothingDropDown.dropdown = "DropdownMenu_ScrollingList";
         smoothingDropDown.enabled = true;
         smoothingDropDown.enableInitCallback = false;
         smoothingDropDown.focusable = true;
         smoothingDropDown.itemRenderer = "DropDownListItemRendererSound";
         smoothingDropDown.menuDirection = "down";
         smoothingDropDown.menuMargin = 1;
         smoothingDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         smoothingDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         smoothingDropDown.rowCount = 15;
         smoothingDropDown.menuRowsFixed = false;
         smoothingDropDown.menuWidth = -1;
         smoothingDropDown.menuWrapping = "normal";
         smoothingDropDown.scrollBar = "ScrollBar";
         smoothingDropDown.showEmptyItems = false;
         smoothingDropDown.soundId = "";
         smoothingDropDown.soundType = "";
         smoothingDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         smoothingDropDown.visible = true;
         try
         {
            smoothingDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gammaSlider_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            gammaSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gammaSlider.enabled = true;
         gammaSlider.enableInitCallback = false;
         gammaSlider.focusable = true;
         gammaSlider.liveDragging = true;
         gammaSlider.maximum = 2;
         gammaSlider.minimum = 0.0;
         gammaSlider.snapInterval = 0.01;
         gammaSlider.snapping = false;
         gammaSlider.undefinedDisabled = false;
         gammaSlider.value = 1;
         gammaSlider.visible = true;
         try
         {
            gammaSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_fullScreenCheckbox_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            fullScreenCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fullScreenCheckbox.autoSize = "none";
         fullScreenCheckbox.data = "";
         fullScreenCheckbox.disabledTextAlpha = 0.5;
         fullScreenCheckbox.enabled = true;
         fullScreenCheckbox.enableInitCallback = false;
         fullScreenCheckbox.focusable = true;
         fullScreenCheckbox.infoIcoType = "";
         fullScreenCheckbox.label = "";
         fullScreenCheckbox.selected = false;
         fullScreenCheckbox.soundId = "";
         fullScreenCheckbox.soundType = "";
         fullScreenCheckbox.textColor = 9868935;
         fullScreenCheckbox.textFont = "$TextFont";
         fullScreenCheckbox.textSize = 12;
         fullScreenCheckbox.toolTip = "";
         fullScreenCheckbox.visible = true;
         try
         {
            fullScreenCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_vertSyncCheckbox_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            vertSyncCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         vertSyncCheckbox.autoSize = "none";
         vertSyncCheckbox.data = "";
         vertSyncCheckbox.disabledTextAlpha = 0.5;
         vertSyncCheckbox.enabled = true;
         vertSyncCheckbox.enableInitCallback = false;
         vertSyncCheckbox.focusable = true;
         vertSyncCheckbox.infoIcoType = "";
         vertSyncCheckbox.label = "";
         vertSyncCheckbox.selected = false;
         vertSyncCheckbox.soundId = "";
         vertSyncCheckbox.soundType = "";
         vertSyncCheckbox.textColor = 9868935;
         vertSyncCheckbox.textFont = "$TextFont";
         vertSyncCheckbox.textSize = 12;
         vertSyncCheckbox.toolTip = "";
         vertSyncCheckbox.visible = true;
         try
         {
            vertSyncCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_isColorBlindCheckbox_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            isColorBlindCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         isColorBlindCheckbox.autoSize = "none";
         isColorBlindCheckbox.data = "";
         isColorBlindCheckbox.disabledTextAlpha = 0.5;
         isColorBlindCheckbox.enabled = true;
         isColorBlindCheckbox.enableInitCallback = false;
         isColorBlindCheckbox.focusable = true;
         isColorBlindCheckbox.infoIcoType = "";
         isColorBlindCheckbox.label = "";
         isColorBlindCheckbox.selected = false;
         isColorBlindCheckbox.soundId = "";
         isColorBlindCheckbox.soundType = "";
         isColorBlindCheckbox.textColor = 9868935;
         isColorBlindCheckbox.textFont = "$TextFont";
         isColorBlindCheckbox.textSize = 12;
         isColorBlindCheckbox.toolTip = "";
         isColorBlindCheckbox.visible = true;
         try
         {
            isColorBlindCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_refreshRateDropDown_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            refreshRateDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         refreshRateDropDown.autoSize = "none";
         refreshRateDropDown.dropdown = "DropdownMenu_ScrollingList";
         refreshRateDropDown.enabled = true;
         refreshRateDropDown.enableInitCallback = false;
         refreshRateDropDown.focusable = true;
         refreshRateDropDown.itemRenderer = "DropDownListItemRendererSound";
         refreshRateDropDown.menuDirection = "down";
         refreshRateDropDown.menuMargin = 1;
         refreshRateDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         refreshRateDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         refreshRateDropDown.rowCount = 15;
         refreshRateDropDown.menuRowsFixed = false;
         refreshRateDropDown.menuWidth = -1;
         refreshRateDropDown.menuWrapping = "normal";
         refreshRateDropDown.scrollBar = "ScrollBar";
         refreshRateDropDown.showEmptyItems = false;
         refreshRateDropDown.soundId = "";
         refreshRateDropDown.soundType = "";
         refreshRateDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         refreshRateDropDown.visible = true;
         try
         {
            refreshRateDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_COLOR_GRADING_TECHNIQUEDropDown_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            COLOR_GRADING_TECHNIQUEDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         COLOR_GRADING_TECHNIQUEDropDown.autoSize = "none";
         COLOR_GRADING_TECHNIQUEDropDown.dropdown = "DropdownMenu_ScrollingList";
         COLOR_GRADING_TECHNIQUEDropDown.enabled = true;
         COLOR_GRADING_TECHNIQUEDropDown.enableInitCallback = false;
         COLOR_GRADING_TECHNIQUEDropDown.focusable = true;
         COLOR_GRADING_TECHNIQUEDropDown.itemRenderer = "DropDownListItemRendererSound";
         COLOR_GRADING_TECHNIQUEDropDown.menuDirection = "down";
         COLOR_GRADING_TECHNIQUEDropDown.menuMargin = 1;
         COLOR_GRADING_TECHNIQUEDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         COLOR_GRADING_TECHNIQUEDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         COLOR_GRADING_TECHNIQUEDropDown.rowCount = 15;
         COLOR_GRADING_TECHNIQUEDropDown.menuRowsFixed = false;
         COLOR_GRADING_TECHNIQUEDropDown.menuWidth = -1;
         COLOR_GRADING_TECHNIQUEDropDown.menuWrapping = "normal";
         COLOR_GRADING_TECHNIQUEDropDown.scrollBar = "";
         COLOR_GRADING_TECHNIQUEDropDown.showEmptyItems = false;
         COLOR_GRADING_TECHNIQUEDropDown.soundId = "";
         COLOR_GRADING_TECHNIQUEDropDown.soundType = "";
         COLOR_GRADING_TECHNIQUEDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         COLOR_GRADING_TECHNIQUEDropDown.visible = true;
         try
         {
            COLOR_GRADING_TECHNIQUEDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_colorFilterIntensitySlider_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            colorFilterIntensitySlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         colorFilterIntensitySlider.enabled = true;
         colorFilterIntensitySlider.enableInitCallback = false;
         colorFilterIntensitySlider.focusable = true;
         colorFilterIntensitySlider.liveDragging = true;
         colorFilterIntensitySlider.maximum = 100;
         colorFilterIntensitySlider.minimum = 25;
         colorFilterIntensitySlider.snapInterval = 25;
         colorFilterIntensitySlider.snapping = true;
         colorFilterIntensitySlider.undefinedDisabled = false;
         colorFilterIntensitySlider.value = 25;
         colorFilterIntensitySlider.visible = true;
         try
         {
            colorFilterIntensitySlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_fovRangeSlider_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            fovRangeSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fovRangeSlider.divisionLabelPostfix = "°";
         fovRangeSlider.divisionLabelStep = 10;
         fovRangeSlider.divisionPointRenderer = "SliderDivisionPointUI";
         fovRangeSlider.divisionStep = 5;
         fovRangeSlider.enabled = true;
         fovRangeSlider.enableInitCallback = false;
         fovRangeSlider.focusable = true;
         fovRangeSlider.leftValue = 80;
         fovRangeSlider.liveDragging = true;
         fovRangeSlider.maximum = 120;
         fovRangeSlider.minimum = 70;
         fovRangeSlider.minRangeDistance = 5;
         fovRangeSlider.rangeMode = true;
         fovRangeSlider.rightValue = 100;
         fovRangeSlider.snapInterval = 5;
         fovRangeSlider.snapping = true;
         fovRangeSlider.undefinedDisabled = false;
         fovRangeSlider.value = 95;
         fovRangeSlider.visible = true;
         try
         {
            fovRangeSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_dynamicFovCheckbox_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            dynamicFovCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         dynamicFovCheckbox.autoSize = "none";
         dynamicFovCheckbox.data = "";
         dynamicFovCheckbox.disabledTextAlpha = 0.5;
         dynamicFovCheckbox.enabled = true;
         dynamicFovCheckbox.enableInitCallback = false;
         dynamicFovCheckbox.focusable = true;
         dynamicFovCheckbox.infoIcoType = "";
         dynamicFovCheckbox.label = "";
         dynamicFovCheckbox.selected = false;
         dynamicFovCheckbox.soundId = "";
         dynamicFovCheckbox.soundType = "";
         dynamicFovCheckbox.textColor = 9868935;
         dynamicFovCheckbox.textFont = "$TextFont";
         dynamicFovCheckbox.textSize = 12;
         dynamicFovCheckbox.toolTip = "";
         dynamicFovCheckbox.visible = true;
         try
         {
            dynamicFovCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_tripleBufferedCheckbox_ScreenSettingsForm_controls_0() : *
      {
         try
         {
            tripleBufferedCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         tripleBufferedCheckbox.autoSize = "none";
         tripleBufferedCheckbox.data = "";
         tripleBufferedCheckbox.disabledTextAlpha = 0.5;
         tripleBufferedCheckbox.enabled = true;
         tripleBufferedCheckbox.enableInitCallback = false;
         tripleBufferedCheckbox.focusable = true;
         tripleBufferedCheckbox.infoIcoType = "";
         tripleBufferedCheckbox.label = "";
         tripleBufferedCheckbox.selected = false;
         tripleBufferedCheckbox.soundId = "";
         tripleBufferedCheckbox.soundType = "";
         tripleBufferedCheckbox.textColor = 9868935;
         tripleBufferedCheckbox.textFont = "$TextFont";
         tripleBufferedCheckbox.textSize = 12;
         tripleBufferedCheckbox.toolTip = "";
         tripleBufferedCheckbox.visible = true;
         try
         {
            tripleBufferedCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
