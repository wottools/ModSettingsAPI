package
{
   import net.wg.gui.lobby.settings.SettingsMarkersForm;
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
   
   public dynamic class markerForm extends SettingsMarkersForm
   {
      
      public function markerForm()
      {
         super();
         this.__setProp_markerBaseIconCheckbox_markerForm_controls_0();
         this.__setProp_markerBaseLevelCheckbox_markerForm_controls_0();
         this.__setProp_markerBaseVehicleNameCheckbox_markerForm_controls_0();
         this.__setProp_markerBasePlayerNameCheckbox_markerForm_controls_0();
         this.__setProp_markerBaseHpIndicatorCheckbox_markerForm_controls_0();
         this.__setProp_markerBaseHpDropDown_markerForm_controls_0();
         this.__setProp_markerAltHpDropDown_markerForm_controls_0();
         this.__setProp_markerBaseDamageCheckbox_markerForm_controls_0();
         this.__setProp_markerAltIconCheckbox_markerForm_controls_0();
         this.__setProp_markerAltLevelCheckbox_markerForm_controls_0();
         this.__setProp_markerAltVehicleNameCheckbox_markerForm_controls_0();
         this.__setProp_markerAltPlayerNameCheckbox_markerForm_controls_0();
         this.__setProp_markerAltHpIndicatorCheckbox_markerForm_controls_0();
         this.__setProp_markerAltDamageCheckbox_markerForm_controls_0();
      }
      
      function __setProp_markerBaseIconCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerBaseIconCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBaseIconCheckbox.autoSize = "none";
         markerBaseIconCheckbox.data = "";
         markerBaseIconCheckbox.disabledTextAlpha = 0.5;
         markerBaseIconCheckbox.enabled = true;
         markerBaseIconCheckbox.enableInitCallback = false;
         markerBaseIconCheckbox.focusable = true;
         markerBaseIconCheckbox.infoIcoType = "";
         markerBaseIconCheckbox.label = "#settings:marker/icon";
         markerBaseIconCheckbox.selected = false;
         markerBaseIconCheckbox.soundId = "";
         markerBaseIconCheckbox.soundType = "";
         markerBaseIconCheckbox.textColor = 9868935;
         markerBaseIconCheckbox.textFont = "$TextFont";
         markerBaseIconCheckbox.textSize = 12;
         markerBaseIconCheckbox.toolTip = "";
         markerBaseIconCheckbox.visible = true;
         try
         {
            markerBaseIconCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerBaseLevelCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerBaseLevelCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBaseLevelCheckbox.autoSize = "none";
         markerBaseLevelCheckbox.data = "";
         markerBaseLevelCheckbox.disabledTextAlpha = 0.5;
         markerBaseLevelCheckbox.enabled = true;
         markerBaseLevelCheckbox.enableInitCallback = false;
         markerBaseLevelCheckbox.focusable = true;
         markerBaseLevelCheckbox.infoIcoType = "";
         markerBaseLevelCheckbox.label = "#settings:marker/level";
         markerBaseLevelCheckbox.selected = false;
         markerBaseLevelCheckbox.soundId = "";
         markerBaseLevelCheckbox.soundType = "";
         markerBaseLevelCheckbox.textColor = 9868935;
         markerBaseLevelCheckbox.textFont = "$TextFont";
         markerBaseLevelCheckbox.textSize = 12;
         markerBaseLevelCheckbox.toolTip = "";
         markerBaseLevelCheckbox.visible = true;
         try
         {
            markerBaseLevelCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerBaseVehicleNameCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerBaseVehicleNameCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBaseVehicleNameCheckbox.autoSize = "none";
         markerBaseVehicleNameCheckbox.data = "";
         markerBaseVehicleNameCheckbox.disabledTextAlpha = 0.5;
         markerBaseVehicleNameCheckbox.enabled = true;
         markerBaseVehicleNameCheckbox.enableInitCallback = false;
         markerBaseVehicleNameCheckbox.focusable = true;
         markerBaseVehicleNameCheckbox.infoIcoType = "";
         markerBaseVehicleNameCheckbox.label = "#settings:marker/name";
         markerBaseVehicleNameCheckbox.selected = false;
         markerBaseVehicleNameCheckbox.soundId = "";
         markerBaseVehicleNameCheckbox.soundType = "";
         markerBaseVehicleNameCheckbox.textColor = 9868935;
         markerBaseVehicleNameCheckbox.textFont = "$TextFont";
         markerBaseVehicleNameCheckbox.textSize = 12;
         markerBaseVehicleNameCheckbox.toolTip = "";
         markerBaseVehicleNameCheckbox.visible = true;
         try
         {
            markerBaseVehicleNameCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerBasePlayerNameCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerBasePlayerNameCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBasePlayerNameCheckbox.autoSize = "none";
         markerBasePlayerNameCheckbox.data = "";
         markerBasePlayerNameCheckbox.disabledTextAlpha = 0.5;
         markerBasePlayerNameCheckbox.enabled = true;
         markerBasePlayerNameCheckbox.enableInitCallback = false;
         markerBasePlayerNameCheckbox.focusable = true;
         markerBasePlayerNameCheckbox.infoIcoType = "";
         markerBasePlayerNameCheckbox.label = "#settings:marker/nickname";
         markerBasePlayerNameCheckbox.selected = false;
         markerBasePlayerNameCheckbox.soundId = "";
         markerBasePlayerNameCheckbox.soundType = "";
         markerBasePlayerNameCheckbox.textColor = 9868935;
         markerBasePlayerNameCheckbox.textFont = "$TextFont";
         markerBasePlayerNameCheckbox.textSize = 12;
         markerBasePlayerNameCheckbox.toolTip = "";
         markerBasePlayerNameCheckbox.visible = true;
         try
         {
            markerBasePlayerNameCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerBaseHpIndicatorCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerBaseHpIndicatorCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBaseHpIndicatorCheckbox.autoSize = "none";
         markerBaseHpIndicatorCheckbox.data = "";
         markerBaseHpIndicatorCheckbox.disabledTextAlpha = 0.5;
         markerBaseHpIndicatorCheckbox.enabled = true;
         markerBaseHpIndicatorCheckbox.enableInitCallback = false;
         markerBaseHpIndicatorCheckbox.focusable = true;
         markerBaseHpIndicatorCheckbox.infoIcoType = "";
         markerBaseHpIndicatorCheckbox.label = "#settings:marker/hpIndicator";
         markerBaseHpIndicatorCheckbox.selected = false;
         markerBaseHpIndicatorCheckbox.soundId = "";
         markerBaseHpIndicatorCheckbox.soundType = "";
         markerBaseHpIndicatorCheckbox.textColor = 9868935;
         markerBaseHpIndicatorCheckbox.textFont = "$TextFont";
         markerBaseHpIndicatorCheckbox.textSize = 12;
         markerBaseHpIndicatorCheckbox.toolTip = "";
         markerBaseHpIndicatorCheckbox.visible = true;
         try
         {
            markerBaseHpIndicatorCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerBaseHpDropDown_markerForm_controls_0() : *
      {
         try
         {
            markerBaseHpDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBaseHpDropDown.autoSize = "none";
         markerBaseHpDropDown.dropdown = "DropdownMenu_ScrollingList";
         markerBaseHpDropDown.enabled = true;
         markerBaseHpDropDown.enableInitCallback = false;
         markerBaseHpDropDown.focusable = true;
         markerBaseHpDropDown.itemRenderer = "DropDownListItemRendererSound";
         markerBaseHpDropDown.menuDirection = "down";
         markerBaseHpDropDown.menuMargin = 1;
         markerBaseHpDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         markerBaseHpDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         markerBaseHpDropDown.rowCount = 15;
         markerBaseHpDropDown.menuRowsFixed = false;
         markerBaseHpDropDown.menuWidth = -1;
         markerBaseHpDropDown.menuWrapping = "normal";
         markerBaseHpDropDown.scrollBar = "";
         markerBaseHpDropDown.showEmptyItems = false;
         markerBaseHpDropDown.soundId = "";
         markerBaseHpDropDown.soundType = "";
         markerBaseHpDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         markerBaseHpDropDown.visible = true;
         try
         {
            markerBaseHpDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltHpDropDown_markerForm_controls_0() : *
      {
         try
         {
            markerAltHpDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltHpDropDown.autoSize = "none";
         markerAltHpDropDown.dropdown = "DropdownMenu_ScrollingList";
         markerAltHpDropDown.enabled = true;
         markerAltHpDropDown.enableInitCallback = false;
         markerAltHpDropDown.focusable = true;
         markerAltHpDropDown.itemRenderer = "DropDownListItemRendererSound";
         markerAltHpDropDown.menuDirection = "down";
         markerAltHpDropDown.menuMargin = 1;
         markerAltHpDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         markerAltHpDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         markerAltHpDropDown.rowCount = 15;
         markerAltHpDropDown.menuRowsFixed = false;
         markerAltHpDropDown.menuWidth = -1;
         markerAltHpDropDown.menuWrapping = "normal";
         markerAltHpDropDown.scrollBar = "";
         markerAltHpDropDown.showEmptyItems = false;
         markerAltHpDropDown.soundId = "";
         markerAltHpDropDown.soundType = "";
         markerAltHpDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         markerAltHpDropDown.visible = true;
         try
         {
            markerAltHpDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerBaseDamageCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerBaseDamageCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerBaseDamageCheckbox.autoSize = "none";
         markerBaseDamageCheckbox.data = "";
         markerBaseDamageCheckbox.disabledTextAlpha = 0.5;
         markerBaseDamageCheckbox.enabled = true;
         markerBaseDamageCheckbox.enableInitCallback = false;
         markerBaseDamageCheckbox.focusable = true;
         markerBaseDamageCheckbox.infoIcoType = "";
         markerBaseDamageCheckbox.label = "#settings:marker/damage";
         markerBaseDamageCheckbox.selected = false;
         markerBaseDamageCheckbox.soundId = "";
         markerBaseDamageCheckbox.soundType = "";
         markerBaseDamageCheckbox.textColor = 9868935;
         markerBaseDamageCheckbox.textFont = "$TextFont";
         markerBaseDamageCheckbox.textSize = 12;
         markerBaseDamageCheckbox.toolTip = "";
         markerBaseDamageCheckbox.visible = true;
         try
         {
            markerBaseDamageCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltIconCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerAltIconCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltIconCheckbox.autoSize = "none";
         markerAltIconCheckbox.data = "";
         markerAltIconCheckbox.disabledTextAlpha = 0.5;
         markerAltIconCheckbox.enabled = true;
         markerAltIconCheckbox.enableInitCallback = false;
         markerAltIconCheckbox.focusable = true;
         markerAltIconCheckbox.infoIcoType = "";
         markerAltIconCheckbox.label = "#settings:marker/icon";
         markerAltIconCheckbox.selected = false;
         markerAltIconCheckbox.soundId = "";
         markerAltIconCheckbox.soundType = "";
         markerAltIconCheckbox.textColor = 9868935;
         markerAltIconCheckbox.textFont = "$TextFont";
         markerAltIconCheckbox.textSize = 12;
         markerAltIconCheckbox.toolTip = "";
         markerAltIconCheckbox.visible = true;
         try
         {
            markerAltIconCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltLevelCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerAltLevelCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltLevelCheckbox.autoSize = "none";
         markerAltLevelCheckbox.data = "";
         markerAltLevelCheckbox.disabledTextAlpha = 0.5;
         markerAltLevelCheckbox.enabled = true;
         markerAltLevelCheckbox.enableInitCallback = false;
         markerAltLevelCheckbox.focusable = true;
         markerAltLevelCheckbox.infoIcoType = "";
         markerAltLevelCheckbox.label = "#settings:marker/level";
         markerAltLevelCheckbox.selected = false;
         markerAltLevelCheckbox.soundId = "";
         markerAltLevelCheckbox.soundType = "";
         markerAltLevelCheckbox.textColor = 9868935;
         markerAltLevelCheckbox.textFont = "$TextFont";
         markerAltLevelCheckbox.textSize = 12;
         markerAltLevelCheckbox.toolTip = "";
         markerAltLevelCheckbox.visible = true;
         try
         {
            markerAltLevelCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltVehicleNameCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerAltVehicleNameCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltVehicleNameCheckbox.autoSize = "none";
         markerAltVehicleNameCheckbox.data = "";
         markerAltVehicleNameCheckbox.disabledTextAlpha = 0.5;
         markerAltVehicleNameCheckbox.enabled = true;
         markerAltVehicleNameCheckbox.enableInitCallback = false;
         markerAltVehicleNameCheckbox.focusable = true;
         markerAltVehicleNameCheckbox.infoIcoType = "";
         markerAltVehicleNameCheckbox.label = "#settings:marker/name";
         markerAltVehicleNameCheckbox.selected = false;
         markerAltVehicleNameCheckbox.soundId = "";
         markerAltVehicleNameCheckbox.soundType = "";
         markerAltVehicleNameCheckbox.textColor = 9868935;
         markerAltVehicleNameCheckbox.textFont = "$TextFont";
         markerAltVehicleNameCheckbox.textSize = 12;
         markerAltVehicleNameCheckbox.toolTip = "";
         markerAltVehicleNameCheckbox.visible = true;
         try
         {
            markerAltVehicleNameCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltPlayerNameCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerAltPlayerNameCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltPlayerNameCheckbox.autoSize = "none";
         markerAltPlayerNameCheckbox.data = "";
         markerAltPlayerNameCheckbox.disabledTextAlpha = 0.5;
         markerAltPlayerNameCheckbox.enabled = true;
         markerAltPlayerNameCheckbox.enableInitCallback = false;
         markerAltPlayerNameCheckbox.focusable = true;
         markerAltPlayerNameCheckbox.infoIcoType = "";
         markerAltPlayerNameCheckbox.label = "#settings:marker/nickname";
         markerAltPlayerNameCheckbox.selected = false;
         markerAltPlayerNameCheckbox.soundId = "";
         markerAltPlayerNameCheckbox.soundType = "";
         markerAltPlayerNameCheckbox.textColor = 9868935;
         markerAltPlayerNameCheckbox.textFont = "$TextFont";
         markerAltPlayerNameCheckbox.textSize = 12;
         markerAltPlayerNameCheckbox.toolTip = "";
         markerAltPlayerNameCheckbox.visible = true;
         try
         {
            markerAltPlayerNameCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltHpIndicatorCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerAltHpIndicatorCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltHpIndicatorCheckbox.autoSize = "none";
         markerAltHpIndicatorCheckbox.data = "";
         markerAltHpIndicatorCheckbox.disabledTextAlpha = 0.5;
         markerAltHpIndicatorCheckbox.enabled = true;
         markerAltHpIndicatorCheckbox.enableInitCallback = false;
         markerAltHpIndicatorCheckbox.focusable = true;
         markerAltHpIndicatorCheckbox.infoIcoType = "";
         markerAltHpIndicatorCheckbox.label = "#settings:marker/hpIndicator";
         markerAltHpIndicatorCheckbox.selected = false;
         markerAltHpIndicatorCheckbox.soundId = "";
         markerAltHpIndicatorCheckbox.soundType = "";
         markerAltHpIndicatorCheckbox.textColor = 9868935;
         markerAltHpIndicatorCheckbox.textFont = "$TextFont";
         markerAltHpIndicatorCheckbox.textSize = 12;
         markerAltHpIndicatorCheckbox.toolTip = "";
         markerAltHpIndicatorCheckbox.visible = true;
         try
         {
            markerAltHpIndicatorCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAltDamageCheckbox_markerForm_controls_0() : *
      {
         try
         {
            markerAltDamageCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAltDamageCheckbox.autoSize = "none";
         markerAltDamageCheckbox.data = "";
         markerAltDamageCheckbox.disabledTextAlpha = 0.5;
         markerAltDamageCheckbox.enabled = true;
         markerAltDamageCheckbox.enableInitCallback = false;
         markerAltDamageCheckbox.focusable = true;
         markerAltDamageCheckbox.infoIcoType = "";
         markerAltDamageCheckbox.label = "#settings:marker/damage";
         markerAltDamageCheckbox.selected = false;
         markerAltDamageCheckbox.soundId = "";
         markerAltDamageCheckbox.soundType = "";
         markerAltDamageCheckbox.textColor = 9868935;
         markerAltDamageCheckbox.textFont = "$TextFont";
         markerAltDamageCheckbox.textSize = 12;
         markerAltDamageCheckbox.toolTip = "";
         markerAltDamageCheckbox.visible = true;
         try
         {
            markerAltDamageCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
