package
{
   import net.wg.gui.lobby.settings.AdvancedGraphicContentForm;
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
   
   public dynamic class AdvancedGraphicContentFormUI extends AdvancedGraphicContentForm
   {
      
      public function AdvancedGraphicContentFormUI()
      {
         super();
         this.__setProp_graficsFieldSet_AdvancedGraphicContentForm_graficsFieldSet_0();
         this.__setProp_SNIPER_MODE_GRASS_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0();
         this.__setProp_VEHICLE_DUST_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0();
         this.__setProp_VEHICLE_TRACES_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0();
         this.__setProp_fpsPerfomancerCheckbox_AdvancedGraphicContentForm_checkBoxes_0();
         this.__setProp_SEMITRANSPARENT_LEAVES_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0();
         this.__setProp_RENDER_PIPELINEButtonBar_AdvancedGraphicContentForm_radioButtons_0();
         this.__setProp_RENDER_PIPELINELabel_AdvancedGraphicContentForm_radioButtons_0();
         this.__setProp_TEXTURE_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_TEXTURE_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_LIGHTING_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_LIGHTING_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_SHADOWS_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_SHADOWS_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_EFFECTS_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_EFFECTS_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_SNIPER_MODE_EFFECTS_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_SNIPER_MODE_EFFECTS_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_FLORA_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_FLORA_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_POST_PROCESSING_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_POST_PROCESSING_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_TERRAIN_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_TERRAIN_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_WATER_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_WATER_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_DECALS_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_DECALS_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_OBJECT_LODLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_OBJECT_LODValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_SPEEDTREE_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_SPEEDTREE_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_FAR_PLANELabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_FAR_PLANEValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_MOTION_BLUR_QUALITYLabel_AdvancedGraphicContentForm_labels_0();
         this.__setProp_MOTION_BLUR_QUALITYValue_AdvancedGraphicContentForm_labels_0();
         this.__setProp_TEXTURE_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_LIGHTING_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_SHADOWS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_EFFECTS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_SNIPER_MODE_EFFECTS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_FLORA_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_POST_PROCESSING_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_TERRAIN_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_WATER_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_DECALS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_OBJECT_LODStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_SPEEDTREE_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_FAR_PLANEStepSlider_AdvancedGraphicContentForm_sliders_0();
         this.__setProp_MOTION_BLUR_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0();
      }
      
      function __setProp_graficsFieldSet_AdvancedGraphicContentForm_graficsFieldSet_0() : *
      {
         try
         {
            graficsFieldSet["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         graficsFieldSet.enabled = true;
         graficsFieldSet.enableInitCallback = false;
         graficsFieldSet.label = "";
         graficsFieldSet.margin = 5;
         graficsFieldSet.showLabel = true;
         graficsFieldSet.visible = true;
         try
         {
            graficsFieldSet["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SNIPER_MODE_GRASS_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0() : *
      {
         try
         {
            SNIPER_MODE_GRASS_ENABLEDCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SNIPER_MODE_GRASS_ENABLEDCheckbox.autoSize = "none";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.data = "";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.disabledTextAlpha = 0.5;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.enabled = true;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.enableInitCallback = false;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.focusable = true;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.infoIcoType = "";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.label = "";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.selected = false;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.soundId = "";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.soundType = "";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.textColor = 9868935;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.textFont = "$TextFont";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.textSize = 12;
         SNIPER_MODE_GRASS_ENABLEDCheckbox.toolTip = "";
         SNIPER_MODE_GRASS_ENABLEDCheckbox.visible = true;
         try
         {
            SNIPER_MODE_GRASS_ENABLEDCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_VEHICLE_DUST_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0() : *
      {
         try
         {
            VEHICLE_DUST_ENABLEDCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         VEHICLE_DUST_ENABLEDCheckbox.autoSize = "none";
         VEHICLE_DUST_ENABLEDCheckbox.data = "";
         VEHICLE_DUST_ENABLEDCheckbox.disabledTextAlpha = 0.5;
         VEHICLE_DUST_ENABLEDCheckbox.enabled = true;
         VEHICLE_DUST_ENABLEDCheckbox.enableInitCallback = false;
         VEHICLE_DUST_ENABLEDCheckbox.focusable = true;
         VEHICLE_DUST_ENABLEDCheckbox.infoIcoType = "";
         VEHICLE_DUST_ENABLEDCheckbox.label = "";
         VEHICLE_DUST_ENABLEDCheckbox.selected = false;
         VEHICLE_DUST_ENABLEDCheckbox.soundId = "";
         VEHICLE_DUST_ENABLEDCheckbox.soundType = "";
         VEHICLE_DUST_ENABLEDCheckbox.textColor = 9868935;
         VEHICLE_DUST_ENABLEDCheckbox.textFont = "$TextFont";
         VEHICLE_DUST_ENABLEDCheckbox.textSize = 12;
         VEHICLE_DUST_ENABLEDCheckbox.toolTip = "";
         VEHICLE_DUST_ENABLEDCheckbox.visible = true;
         try
         {
            VEHICLE_DUST_ENABLEDCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_VEHICLE_TRACES_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0() : *
      {
         try
         {
            VEHICLE_TRACES_ENABLEDCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         VEHICLE_TRACES_ENABLEDCheckbox.autoSize = "none";
         VEHICLE_TRACES_ENABLEDCheckbox.data = "";
         VEHICLE_TRACES_ENABLEDCheckbox.disabledTextAlpha = 0.5;
         VEHICLE_TRACES_ENABLEDCheckbox.enabled = true;
         VEHICLE_TRACES_ENABLEDCheckbox.enableInitCallback = false;
         VEHICLE_TRACES_ENABLEDCheckbox.focusable = true;
         VEHICLE_TRACES_ENABLEDCheckbox.infoIcoType = "";
         VEHICLE_TRACES_ENABLEDCheckbox.label = "";
         VEHICLE_TRACES_ENABLEDCheckbox.selected = false;
         VEHICLE_TRACES_ENABLEDCheckbox.soundId = "";
         VEHICLE_TRACES_ENABLEDCheckbox.soundType = "";
         VEHICLE_TRACES_ENABLEDCheckbox.textColor = 9868935;
         VEHICLE_TRACES_ENABLEDCheckbox.textFont = "$TextFont";
         VEHICLE_TRACES_ENABLEDCheckbox.textSize = 12;
         VEHICLE_TRACES_ENABLEDCheckbox.toolTip = "";
         VEHICLE_TRACES_ENABLEDCheckbox.visible = true;
         try
         {
            VEHICLE_TRACES_ENABLEDCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_fpsPerfomancerCheckbox_AdvancedGraphicContentForm_checkBoxes_0() : *
      {
         try
         {
            fpsPerfomancerCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fpsPerfomancerCheckbox.autoSize = "none";
         fpsPerfomancerCheckbox.data = "";
         fpsPerfomancerCheckbox.disabledTextAlpha = 0.5;
         fpsPerfomancerCheckbox.enabled = true;
         fpsPerfomancerCheckbox.enableInitCallback = false;
         fpsPerfomancerCheckbox.focusable = true;
         fpsPerfomancerCheckbox.infoIcoType = "";
         fpsPerfomancerCheckbox.label = "";
         fpsPerfomancerCheckbox.selected = false;
         fpsPerfomancerCheckbox.soundId = "";
         fpsPerfomancerCheckbox.soundType = "";
         fpsPerfomancerCheckbox.textColor = 9868935;
         fpsPerfomancerCheckbox.textFont = "$TextFont";
         fpsPerfomancerCheckbox.textSize = 12;
         fpsPerfomancerCheckbox.toolTip = "";
         fpsPerfomancerCheckbox.visible = true;
         try
         {
            fpsPerfomancerCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SEMITRANSPARENT_LEAVES_ENABLEDCheckbox_AdvancedGraphicContentForm_checkBoxes_0() : *
      {
         try
         {
            SEMITRANSPARENT_LEAVES_ENABLEDCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.autoSize = "none";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.data = "";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.disabledTextAlpha = 0.5;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.enabled = true;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.enableInitCallback = false;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.focusable = true;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.infoIcoType = "";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.label = "";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.selected = false;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.soundId = "";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.soundType = "";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.textColor = 9868935;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.textFont = "$TextFont";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.textSize = 12;
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.toolTip = "";
         SEMITRANSPARENT_LEAVES_ENABLEDCheckbox.visible = true;
         try
         {
            SEMITRANSPARENT_LEAVES_ENABLEDCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_RENDER_PIPELINEButtonBar_AdvancedGraphicContentForm_radioButtons_0() : *
      {
         try
         {
            RENDER_PIPELINEButtonBar["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         RENDER_PIPELINEButtonBar.autoSize = "left";
         RENDER_PIPELINEButtonBar.buttonWidth = 0;
         RENDER_PIPELINEButtonBar.direction = "vertical";
         RENDER_PIPELINEButtonBar.enabled = true;
         RENDER_PIPELINEButtonBar.enableInitCallback = false;
         RENDER_PIPELINEButtonBar.focusable = true;
         RENDER_PIPELINEButtonBar.itemRendererName = "RadioButton";
         RENDER_PIPELINEButtonBar.paddingHorizontal = 10;
         RENDER_PIPELINEButtonBar.spacing = 0;
         RENDER_PIPELINEButtonBar.visible = true;
         try
         {
            RENDER_PIPELINEButtonBar["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_RENDER_PIPELINELabel_AdvancedGraphicContentForm_radioButtons_0() : *
      {
         try
         {
            RENDER_PIPELINELabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         RENDER_PIPELINELabel.autoSize = "left";
         RENDER_PIPELINELabel.enabled = true;
         RENDER_PIPELINELabel.enableInitCallback = false;
         RENDER_PIPELINELabel.text = "n/a";
         RENDER_PIPELINELabel.textAlign = "none";
         RENDER_PIPELINELabel.visible = true;
         try
         {
            RENDER_PIPELINELabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_TEXTURE_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            TEXTURE_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         TEXTURE_QUALITYLabel.autoSize = "none";
         TEXTURE_QUALITYLabel.enabled = true;
         TEXTURE_QUALITYLabel.enableInitCallback = false;
         TEXTURE_QUALITYLabel.text = "n/a";
         TEXTURE_QUALITYLabel.textAlign = "none";
         TEXTURE_QUALITYLabel.visible = true;
         try
         {
            TEXTURE_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_TEXTURE_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            TEXTURE_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         TEXTURE_QUALITYValue.autoSize = "none";
         TEXTURE_QUALITYValue.enabled = true;
         TEXTURE_QUALITYValue.enableInitCallback = false;
         TEXTURE_QUALITYValue.text = "n/a";
         TEXTURE_QUALITYValue.textAlign = "none";
         TEXTURE_QUALITYValue.visible = true;
         try
         {
            TEXTURE_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_LIGHTING_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            LIGHTING_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         LIGHTING_QUALITYLabel.autoSize = "none";
         LIGHTING_QUALITYLabel.enabled = true;
         LIGHTING_QUALITYLabel.enableInitCallback = false;
         LIGHTING_QUALITYLabel.text = "n/a";
         LIGHTING_QUALITYLabel.textAlign = "none";
         LIGHTING_QUALITYLabel.visible = true;
         try
         {
            LIGHTING_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_LIGHTING_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            LIGHTING_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         LIGHTING_QUALITYValue.autoSize = "none";
         LIGHTING_QUALITYValue.enabled = true;
         LIGHTING_QUALITYValue.enableInitCallback = false;
         LIGHTING_QUALITYValue.text = "n/a";
         LIGHTING_QUALITYValue.textAlign = "none";
         LIGHTING_QUALITYValue.visible = true;
         try
         {
            LIGHTING_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SHADOWS_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            SHADOWS_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SHADOWS_QUALITYLabel.autoSize = "none";
         SHADOWS_QUALITYLabel.enabled = true;
         SHADOWS_QUALITYLabel.enableInitCallback = false;
         SHADOWS_QUALITYLabel.text = "n/a";
         SHADOWS_QUALITYLabel.textAlign = "none";
         SHADOWS_QUALITYLabel.visible = true;
         try
         {
            SHADOWS_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SHADOWS_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            SHADOWS_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SHADOWS_QUALITYValue.autoSize = "none";
         SHADOWS_QUALITYValue.enabled = true;
         SHADOWS_QUALITYValue.enableInitCallback = false;
         SHADOWS_QUALITYValue.text = "n/a";
         SHADOWS_QUALITYValue.textAlign = "none";
         SHADOWS_QUALITYValue.visible = true;
         try
         {
            SHADOWS_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_EFFECTS_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            EFFECTS_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         EFFECTS_QUALITYLabel.autoSize = "none";
         EFFECTS_QUALITYLabel.enabled = true;
         EFFECTS_QUALITYLabel.enableInitCallback = false;
         EFFECTS_QUALITYLabel.text = "n/a";
         EFFECTS_QUALITYLabel.textAlign = "none";
         EFFECTS_QUALITYLabel.visible = true;
         try
         {
            EFFECTS_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_EFFECTS_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            EFFECTS_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         EFFECTS_QUALITYValue.autoSize = "none";
         EFFECTS_QUALITYValue.enabled = true;
         EFFECTS_QUALITYValue.enableInitCallback = false;
         EFFECTS_QUALITYValue.text = "n/a";
         EFFECTS_QUALITYValue.textAlign = "none";
         EFFECTS_QUALITYValue.visible = true;
         try
         {
            EFFECTS_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SNIPER_MODE_EFFECTS_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            SNIPER_MODE_EFFECTS_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SNIPER_MODE_EFFECTS_QUALITYLabel.autoSize = "none";
         SNIPER_MODE_EFFECTS_QUALITYLabel.enabled = true;
         SNIPER_MODE_EFFECTS_QUALITYLabel.enableInitCallback = false;
         SNIPER_MODE_EFFECTS_QUALITYLabel.text = "n/a";
         SNIPER_MODE_EFFECTS_QUALITYLabel.textAlign = "none";
         SNIPER_MODE_EFFECTS_QUALITYLabel.visible = true;
         try
         {
            SNIPER_MODE_EFFECTS_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SNIPER_MODE_EFFECTS_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            SNIPER_MODE_EFFECTS_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SNIPER_MODE_EFFECTS_QUALITYValue.autoSize = "none";
         SNIPER_MODE_EFFECTS_QUALITYValue.enabled = true;
         SNIPER_MODE_EFFECTS_QUALITYValue.enableInitCallback = false;
         SNIPER_MODE_EFFECTS_QUALITYValue.text = "n/a";
         SNIPER_MODE_EFFECTS_QUALITYValue.textAlign = "none";
         SNIPER_MODE_EFFECTS_QUALITYValue.visible = true;
         try
         {
            SNIPER_MODE_EFFECTS_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_FLORA_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            FLORA_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         FLORA_QUALITYLabel.autoSize = "none";
         FLORA_QUALITYLabel.enabled = true;
         FLORA_QUALITYLabel.enableInitCallback = false;
         FLORA_QUALITYLabel.text = "n/a";
         FLORA_QUALITYLabel.textAlign = "none";
         FLORA_QUALITYLabel.visible = true;
         try
         {
            FLORA_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_FLORA_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            FLORA_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         FLORA_QUALITYValue.autoSize = "none";
         FLORA_QUALITYValue.enabled = true;
         FLORA_QUALITYValue.enableInitCallback = false;
         FLORA_QUALITYValue.text = "n/a";
         FLORA_QUALITYValue.textAlign = "none";
         FLORA_QUALITYValue.visible = true;
         try
         {
            FLORA_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_POST_PROCESSING_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            POST_PROCESSING_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         POST_PROCESSING_QUALITYLabel.autoSize = "none";
         POST_PROCESSING_QUALITYLabel.enabled = true;
         POST_PROCESSING_QUALITYLabel.enableInitCallback = false;
         POST_PROCESSING_QUALITYLabel.text = "n/a";
         POST_PROCESSING_QUALITYLabel.textAlign = "none";
         POST_PROCESSING_QUALITYLabel.visible = true;
         try
         {
            POST_PROCESSING_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_POST_PROCESSING_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            POST_PROCESSING_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         POST_PROCESSING_QUALITYValue.autoSize = "none";
         POST_PROCESSING_QUALITYValue.enabled = true;
         POST_PROCESSING_QUALITYValue.enableInitCallback = false;
         POST_PROCESSING_QUALITYValue.text = "n/a";
         POST_PROCESSING_QUALITYValue.textAlign = "none";
         POST_PROCESSING_QUALITYValue.visible = true;
         try
         {
            POST_PROCESSING_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_TERRAIN_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            TERRAIN_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         TERRAIN_QUALITYLabel.autoSize = "none";
         TERRAIN_QUALITYLabel.enabled = true;
         TERRAIN_QUALITYLabel.enableInitCallback = false;
         TERRAIN_QUALITYLabel.text = "n/a";
         TERRAIN_QUALITYLabel.textAlign = "none";
         TERRAIN_QUALITYLabel.visible = true;
         try
         {
            TERRAIN_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_TERRAIN_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            TERRAIN_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         TERRAIN_QUALITYValue.autoSize = "none";
         TERRAIN_QUALITYValue.enabled = true;
         TERRAIN_QUALITYValue.enableInitCallback = false;
         TERRAIN_QUALITYValue.text = "n/a";
         TERRAIN_QUALITYValue.textAlign = "none";
         TERRAIN_QUALITYValue.visible = true;
         try
         {
            TERRAIN_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_WATER_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            WATER_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         WATER_QUALITYLabel.autoSize = "none";
         WATER_QUALITYLabel.enabled = true;
         WATER_QUALITYLabel.enableInitCallback = false;
         WATER_QUALITYLabel.text = "n/a";
         WATER_QUALITYLabel.textAlign = "none";
         WATER_QUALITYLabel.visible = true;
         try
         {
            WATER_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_WATER_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            WATER_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         WATER_QUALITYValue.autoSize = "none";
         WATER_QUALITYValue.enabled = true;
         WATER_QUALITYValue.enableInitCallback = false;
         WATER_QUALITYValue.text = "n/a";
         WATER_QUALITYValue.textAlign = "none";
         WATER_QUALITYValue.visible = true;
         try
         {
            WATER_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_DECALS_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            DECALS_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         DECALS_QUALITYLabel.autoSize = "none";
         DECALS_QUALITYLabel.enabled = true;
         DECALS_QUALITYLabel.enableInitCallback = false;
         DECALS_QUALITYLabel.text = "n/a";
         DECALS_QUALITYLabel.textAlign = "none";
         DECALS_QUALITYLabel.visible = true;
         try
         {
            DECALS_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_DECALS_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            DECALS_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         DECALS_QUALITYValue.autoSize = "none";
         DECALS_QUALITYValue.enabled = true;
         DECALS_QUALITYValue.enableInitCallback = false;
         DECALS_QUALITYValue.text = "n/a";
         DECALS_QUALITYValue.textAlign = "none";
         DECALS_QUALITYValue.visible = true;
         try
         {
            DECALS_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_OBJECT_LODLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            OBJECT_LODLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         OBJECT_LODLabel.autoSize = "none";
         OBJECT_LODLabel.enabled = true;
         OBJECT_LODLabel.enableInitCallback = false;
         OBJECT_LODLabel.text = "n/a";
         OBJECT_LODLabel.textAlign = "none";
         OBJECT_LODLabel.visible = true;
         try
         {
            OBJECT_LODLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_OBJECT_LODValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            OBJECT_LODValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         OBJECT_LODValue.autoSize = "none";
         OBJECT_LODValue.enabled = true;
         OBJECT_LODValue.enableInitCallback = false;
         OBJECT_LODValue.text = "n/a";
         OBJECT_LODValue.textAlign = "none";
         OBJECT_LODValue.visible = true;
         try
         {
            OBJECT_LODValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SPEEDTREE_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            SPEEDTREE_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SPEEDTREE_QUALITYLabel.autoSize = "none";
         SPEEDTREE_QUALITYLabel.enabled = true;
         SPEEDTREE_QUALITYLabel.enableInitCallback = false;
         SPEEDTREE_QUALITYLabel.text = "n/a";
         SPEEDTREE_QUALITYLabel.textAlign = "none";
         SPEEDTREE_QUALITYLabel.visible = true;
         try
         {
            SPEEDTREE_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SPEEDTREE_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            SPEEDTREE_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SPEEDTREE_QUALITYValue.autoSize = "none";
         SPEEDTREE_QUALITYValue.enabled = true;
         SPEEDTREE_QUALITYValue.enableInitCallback = false;
         SPEEDTREE_QUALITYValue.text = "n/a";
         SPEEDTREE_QUALITYValue.textAlign = "none";
         SPEEDTREE_QUALITYValue.visible = true;
         try
         {
            SPEEDTREE_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_FAR_PLANELabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            FAR_PLANELabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         FAR_PLANELabel.autoSize = "none";
         FAR_PLANELabel.enabled = true;
         FAR_PLANELabel.enableInitCallback = false;
         FAR_PLANELabel.text = "n/a";
         FAR_PLANELabel.textAlign = "none";
         FAR_PLANELabel.visible = true;
         try
         {
            FAR_PLANELabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_FAR_PLANEValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            FAR_PLANEValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         FAR_PLANEValue.autoSize = "none";
         FAR_PLANEValue.enabled = true;
         FAR_PLANEValue.enableInitCallback = false;
         FAR_PLANEValue.text = "n/a";
         FAR_PLANEValue.textAlign = "none";
         FAR_PLANEValue.visible = true;
         try
         {
            FAR_PLANEValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_MOTION_BLUR_QUALITYLabel_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            MOTION_BLUR_QUALITYLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         MOTION_BLUR_QUALITYLabel.autoSize = "none";
         MOTION_BLUR_QUALITYLabel.enabled = true;
         MOTION_BLUR_QUALITYLabel.enableInitCallback = false;
         MOTION_BLUR_QUALITYLabel.text = "n/a";
         MOTION_BLUR_QUALITYLabel.textAlign = "none";
         MOTION_BLUR_QUALITYLabel.visible = true;
         try
         {
            MOTION_BLUR_QUALITYLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_MOTION_BLUR_QUALITYValue_AdvancedGraphicContentForm_labels_0() : *
      {
         try
         {
            MOTION_BLUR_QUALITYValue["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         MOTION_BLUR_QUALITYValue.autoSize = "none";
         MOTION_BLUR_QUALITYValue.enabled = true;
         MOTION_BLUR_QUALITYValue.enableInitCallback = false;
         MOTION_BLUR_QUALITYValue.text = "n/a";
         MOTION_BLUR_QUALITYValue.textAlign = "none";
         MOTION_BLUR_QUALITYValue.visible = true;
         try
         {
            MOTION_BLUR_QUALITYValue["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_TEXTURE_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            TEXTURE_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         TEXTURE_QUALITYStepSlider.enabled = true;
         TEXTURE_QUALITYStepSlider.enableInitCallback = false;
         TEXTURE_QUALITYStepSlider.focusable = true;
         TEXTURE_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         TEXTURE_QUALITYStepSlider.liveDragging = true;
         TEXTURE_QUALITYStepSlider.undefinedDisabled = false;
         TEXTURE_QUALITYStepSlider.value = 0;
         TEXTURE_QUALITYStepSlider.valueLabel = "TEXTURE_QUALITYValue";
         TEXTURE_QUALITYStepSlider.visible = true;
         try
         {
            TEXTURE_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_LIGHTING_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            LIGHTING_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         LIGHTING_QUALITYStepSlider.enabled = true;
         LIGHTING_QUALITYStepSlider.enableInitCallback = false;
         LIGHTING_QUALITYStepSlider.focusable = true;
         LIGHTING_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         LIGHTING_QUALITYStepSlider.liveDragging = true;
         LIGHTING_QUALITYStepSlider.undefinedDisabled = false;
         LIGHTING_QUALITYStepSlider.value = 0;
         LIGHTING_QUALITYStepSlider.valueLabel = "LIGHTING_QUALITYValue";
         LIGHTING_QUALITYStepSlider.visible = true;
         try
         {
            LIGHTING_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SHADOWS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            SHADOWS_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SHADOWS_QUALITYStepSlider.enabled = true;
         SHADOWS_QUALITYStepSlider.enableInitCallback = false;
         SHADOWS_QUALITYStepSlider.focusable = true;
         SHADOWS_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         SHADOWS_QUALITYStepSlider.liveDragging = true;
         SHADOWS_QUALITYStepSlider.undefinedDisabled = false;
         SHADOWS_QUALITYStepSlider.value = 0;
         SHADOWS_QUALITYStepSlider.valueLabel = "SHADOWS_QUALITYValue";
         SHADOWS_QUALITYStepSlider.visible = true;
         try
         {
            SHADOWS_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_EFFECTS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            EFFECTS_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         EFFECTS_QUALITYStepSlider.enabled = true;
         EFFECTS_QUALITYStepSlider.enableInitCallback = false;
         EFFECTS_QUALITYStepSlider.focusable = true;
         EFFECTS_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         EFFECTS_QUALITYStepSlider.liveDragging = true;
         EFFECTS_QUALITYStepSlider.undefinedDisabled = false;
         EFFECTS_QUALITYStepSlider.value = 0;
         EFFECTS_QUALITYStepSlider.valueLabel = "EFFECTS_QUALITYValue";
         EFFECTS_QUALITYStepSlider.visible = true;
         try
         {
            EFFECTS_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SNIPER_MODE_EFFECTS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            SNIPER_MODE_EFFECTS_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.enabled = true;
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.enableInitCallback = false;
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.focusable = true;
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.liveDragging = true;
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.undefinedDisabled = false;
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.value = 0;
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.valueLabel = "SNIPER_MODE_EFFECTS_QUALITYValue";
         SNIPER_MODE_EFFECTS_QUALITYStepSlider.visible = true;
         try
         {
            SNIPER_MODE_EFFECTS_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_FLORA_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            FLORA_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         FLORA_QUALITYStepSlider.enabled = true;
         FLORA_QUALITYStepSlider.enableInitCallback = false;
         FLORA_QUALITYStepSlider.focusable = true;
         FLORA_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         FLORA_QUALITYStepSlider.liveDragging = true;
         FLORA_QUALITYStepSlider.undefinedDisabled = false;
         FLORA_QUALITYStepSlider.value = 0;
         FLORA_QUALITYStepSlider.valueLabel = "FLORA_QUALITYValue";
         FLORA_QUALITYStepSlider.visible = true;
         try
         {
            FLORA_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_POST_PROCESSING_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            POST_PROCESSING_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         POST_PROCESSING_QUALITYStepSlider.enabled = true;
         POST_PROCESSING_QUALITYStepSlider.enableInitCallback = false;
         POST_PROCESSING_QUALITYStepSlider.focusable = true;
         POST_PROCESSING_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         POST_PROCESSING_QUALITYStepSlider.liveDragging = true;
         POST_PROCESSING_QUALITYStepSlider.undefinedDisabled = false;
         POST_PROCESSING_QUALITYStepSlider.value = 0;
         POST_PROCESSING_QUALITYStepSlider.valueLabel = "POST_PROCESSING_QUALITYValue";
         POST_PROCESSING_QUALITYStepSlider.visible = true;
         try
         {
            POST_PROCESSING_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_TERRAIN_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            TERRAIN_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         TERRAIN_QUALITYStepSlider.enabled = true;
         TERRAIN_QUALITYStepSlider.enableInitCallback = false;
         TERRAIN_QUALITYStepSlider.focusable = true;
         TERRAIN_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         TERRAIN_QUALITYStepSlider.liveDragging = true;
         TERRAIN_QUALITYStepSlider.undefinedDisabled = false;
         TERRAIN_QUALITYStepSlider.value = 0;
         TERRAIN_QUALITYStepSlider.valueLabel = "TERRAIN_QUALITYValue";
         TERRAIN_QUALITYStepSlider.visible = true;
         try
         {
            TERRAIN_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_WATER_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            WATER_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         WATER_QUALITYStepSlider.enabled = true;
         WATER_QUALITYStepSlider.enableInitCallback = false;
         WATER_QUALITYStepSlider.focusable = true;
         WATER_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         WATER_QUALITYStepSlider.liveDragging = true;
         WATER_QUALITYStepSlider.undefinedDisabled = false;
         WATER_QUALITYStepSlider.value = 0;
         WATER_QUALITYStepSlider.valueLabel = "WATER_QUALITYValue";
         WATER_QUALITYStepSlider.visible = true;
         try
         {
            WATER_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_DECALS_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            DECALS_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         DECALS_QUALITYStepSlider.enabled = true;
         DECALS_QUALITYStepSlider.enableInitCallback = false;
         DECALS_QUALITYStepSlider.focusable = true;
         DECALS_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         DECALS_QUALITYStepSlider.liveDragging = true;
         DECALS_QUALITYStepSlider.undefinedDisabled = false;
         DECALS_QUALITYStepSlider.value = 0;
         DECALS_QUALITYStepSlider.valueLabel = "DECALS_QUALITYValue";
         DECALS_QUALITYStepSlider.visible = true;
         try
         {
            DECALS_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_OBJECT_LODStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            OBJECT_LODStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         OBJECT_LODStepSlider.enabled = true;
         OBJECT_LODStepSlider.enableInitCallback = false;
         OBJECT_LODStepSlider.focusable = true;
         OBJECT_LODStepSlider.keyPointRenderer = "SliderKeyPointUI";
         OBJECT_LODStepSlider.liveDragging = true;
         OBJECT_LODStepSlider.undefinedDisabled = false;
         OBJECT_LODStepSlider.value = 0;
         OBJECT_LODStepSlider.valueLabel = "OBJECT_LODValue";
         OBJECT_LODStepSlider.visible = true;
         try
         {
            OBJECT_LODStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_SPEEDTREE_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            SPEEDTREE_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         SPEEDTREE_QUALITYStepSlider.enabled = true;
         SPEEDTREE_QUALITYStepSlider.enableInitCallback = false;
         SPEEDTREE_QUALITYStepSlider.focusable = true;
         SPEEDTREE_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         SPEEDTREE_QUALITYStepSlider.liveDragging = true;
         SPEEDTREE_QUALITYStepSlider.undefinedDisabled = false;
         SPEEDTREE_QUALITYStepSlider.value = 0;
         SPEEDTREE_QUALITYStepSlider.valueLabel = "SPEEDTREE_QUALITYValue";
         SPEEDTREE_QUALITYStepSlider.visible = true;
         try
         {
            SPEEDTREE_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_FAR_PLANEStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            FAR_PLANEStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         FAR_PLANEStepSlider.enabled = true;
         FAR_PLANEStepSlider.enableInitCallback = false;
         FAR_PLANEStepSlider.focusable = true;
         FAR_PLANEStepSlider.keyPointRenderer = "SliderKeyPointUI";
         FAR_PLANEStepSlider.liveDragging = true;
         FAR_PLANEStepSlider.undefinedDisabled = false;
         FAR_PLANEStepSlider.value = 0;
         FAR_PLANEStepSlider.valueLabel = "FAR_PLANEValue";
         FAR_PLANEStepSlider.visible = true;
         try
         {
            FAR_PLANEStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_MOTION_BLUR_QUALITYStepSlider_AdvancedGraphicContentForm_sliders_0() : *
      {
         try
         {
            MOTION_BLUR_QUALITYStepSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         MOTION_BLUR_QUALITYStepSlider.enabled = true;
         MOTION_BLUR_QUALITYStepSlider.enableInitCallback = false;
         MOTION_BLUR_QUALITYStepSlider.focusable = true;
         MOTION_BLUR_QUALITYStepSlider.keyPointRenderer = "SliderKeyPointUI";
         MOTION_BLUR_QUALITYStepSlider.liveDragging = true;
         MOTION_BLUR_QUALITYStepSlider.undefinedDisabled = false;
         MOTION_BLUR_QUALITYStepSlider.value = 0;
         MOTION_BLUR_QUALITYStepSlider.valueLabel = "MOTION_BLUR_QUALITYValue";
         MOTION_BLUR_QUALITYStepSlider.visible = true;
         try
         {
            MOTION_BLUR_QUALITYStepSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
