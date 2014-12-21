package
{
   import net.wg.gui.components.controls.SliderBg;
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
   
   public dynamic class Slider_Track_Up extends SliderBg
   {
      
      public function Slider_Track_Up()
      {
         super();
         this.__setProp_patternMc_Slider_Track_Up_patternMc_0();
         this.__setProp_disablePatternMc_Slider_Track_Up_disablePatternMc_0();
      }
      
      function __setProp_patternMc_Slider_Track_Up_patternMc_0() : *
      {
         try
         {
            patternMc["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         patternMc.enabled = true;
         patternMc.enableInitCallback = false;
         patternMc.heightFill = 10;
         patternMc.repeat = "horizontal";
         patternMc.source = "SliderBgPattern";
         patternMc.startPos = "TL";
         patternMc.visible = true;
         patternMc.widthFill = 100;
         try
         {
            patternMc["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_disablePatternMc_Slider_Track_Up_disablePatternMc_0() : *
      {
         try
         {
            disablePatternMc["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         disablePatternMc.enabled = true;
         disablePatternMc.enableInitCallback = false;
         disablePatternMc.heightFill = 10;
         disablePatternMc.repeat = "horizontal";
         disablePatternMc.source = "SliderDisablePattern";
         disablePatternMc.startPos = "TL";
         disablePatternMc.visible = true;
         disablePatternMc.widthFill = 100;
         try
         {
            disablePatternMc["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
