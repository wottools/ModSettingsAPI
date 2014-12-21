package
{
   import net.wg.gui.lobby.settings.GraphicSettings;
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
   
   public dynamic class GraphicSettings extends net.wg.gui.lobby.settings.GraphicSettings
   {
      
      public function GraphicSettings()
      {
         super();
         this.__setProp_tabs_GraphicSettings_tabs_0();
         this.__setProp_graphicsQualityLabel_GraphicSettings_controls_0();
         this.__setProp_graphicsQualityDropDown_GraphicSettings_controls_0();
         this.__setProp_dynamicRendererLabel_GraphicSettings_controls_0();
         this.__setProp_dynamicRendererValue_GraphicSettings_controls_0();
         this.__setProp_dynamicRendererSlider_GraphicSettings_controls_0();
      }
      
      function __setProp_tabs_GraphicSettings_tabs_0() : *
      {
         try
         {
            tabs["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         tabs.autoSize = "none";
         tabs.buttonWidth = 0;
         tabs.centerTabs = true;
         tabs.direction = "horizontal";
         tabs.enabled = true;
         tabs.enableInitCallback = false;
         tabs.focusable = true;
         tabs.itemRendererName = "ContentTabRendererUI";
         tabs.minRendererWidth = 134;
         tabs.paddingHorizontal = 10;
         tabs.showSeparator = false;
         tabs.spacing = 0;
         tabs.textPadding = 20;
         tabs.visible = true;
         try
         {
            tabs["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_graphicsQualityLabel_GraphicSettings_controls_0() : *
      {
         try
         {
            graphicsQualityLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         graphicsQualityLabel.autoSize = "none";
         graphicsQualityLabel.enabled = true;
         graphicsQualityLabel.enableInitCallback = false;
         graphicsQualityLabel.text = "n/a";
         graphicsQualityLabel.textAlign = "none";
         graphicsQualityLabel.visible = true;
         try
         {
            graphicsQualityLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_graphicsQualityDropDown_GraphicSettings_controls_0() : *
      {
         try
         {
            graphicsQualityDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         graphicsQualityDropDown.autoSize = "none";
         graphicsQualityDropDown.dropdown = "DropdownMenu_ScrollingList";
         graphicsQualityDropDown.enabled = true;
         graphicsQualityDropDown.enableInitCallback = false;
         graphicsQualityDropDown.focusable = true;
         graphicsQualityDropDown.itemRenderer = "DropDownListItemRendererSound";
         graphicsQualityDropDown.menuDirection = "down";
         graphicsQualityDropDown.menuMargin = 1;
         graphicsQualityDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         graphicsQualityDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         graphicsQualityDropDown.rowCount = 15;
         graphicsQualityDropDown.menuRowsFixed = false;
         graphicsQualityDropDown.menuWidth = -1;
         graphicsQualityDropDown.menuWrapping = "normal";
         graphicsQualityDropDown.scrollBar = "";
         graphicsQualityDropDown.showEmptyItems = false;
         graphicsQualityDropDown.soundId = "";
         graphicsQualityDropDown.soundType = "";
         graphicsQualityDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         graphicsQualityDropDown.visible = true;
         try
         {
            graphicsQualityDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_dynamicRendererLabel_GraphicSettings_controls_0() : *
      {
         try
         {
            dynamicRendererLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         dynamicRendererLabel.autoSize = "none";
         dynamicRendererLabel.enabled = true;
         dynamicRendererLabel.enableInitCallback = false;
         dynamicRendererLabel.text = "n/a";
         dynamicRendererLabel.textAlign = "none";
         dynamicRendererLabel.visible = true;
         try
         {
            dynamicRendererLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_dynamicRendererValue_GraphicSettings_controls_0() : *
      {
         try
         {
            dynamicRendererValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         dynamicRendererValue.autoSize = "none";
         dynamicRendererValue.enabled = true;
         dynamicRendererValue.enableInitCallback = false;
         dynamicRendererValue.text = "n/a";
         dynamicRendererValue.textAlign = "right";
         dynamicRendererValue.visible = true;
         try
         {
            dynamicRendererValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_dynamicRendererSlider_GraphicSettings_controls_0() : *
      {
         try
         {
            dynamicRendererSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         dynamicRendererSlider.enabled = true;
         dynamicRendererSlider.enableInitCallback = false;
         dynamicRendererSlider.focusable = true;
         dynamicRendererSlider.liveDragging = true;
         dynamicRendererSlider.maximum = 100;
         dynamicRendererSlider.minimum = 50;
         dynamicRendererSlider.snapInterval = 5;
         dynamicRendererSlider.snapping = true;
         dynamicRendererSlider.undefinedDisabled = false;
         dynamicRendererSlider.value = 0.0;
         dynamicRendererSlider.visible = true;
         try
         {
            dynamicRendererSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
