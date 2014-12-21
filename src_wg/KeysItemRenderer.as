package
{
   import net.wg.gui.lobby.settings.components.KeysItemRenderer;
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
   
   public dynamic class KeysItemRenderer extends net.wg.gui.lobby.settings.components.KeysItemRenderer
   {
      
      public function KeysItemRenderer()
      {
         this.__setPropDict = new Dictionary(true);
         super();
         addFrameScript(9,this.frame10,19,this.frame20,29,this.frame30,39,this.frame40,49,this.frame50,59,this.frame60,69,this.frame70,79,this.frame80,89,this.frame90,99,this.frame100,109,this.frame110,119,this.frame120);
         addEventListener(Event.FRAME_CONSTRUCTED,this.__setProp_handler,false,0,true);
      }
      
      public var __setPropDict:Dictionary;
      
      public var __lastFrameProp:int = -1;
      
      function __setProp_keyInput_KeysItemRenderer_key_0(param1:int) : *
      {
         if(!(keyInput == null) && param1 >= 1 && param1 <= 60 && (this.__setPropDict[keyInput] == undefined || !(int(this.__setPropDict[keyInput]) >= 1 && int(this.__setPropDict[keyInput]) <= 60)))
         {
            this.__setPropDict[keyInput] = param1;
            try
            {
               keyInput["componentInspectorSetting"] = true;
            }
            catch(e:Error)
            {
            }
            keyInput.enabled = true;
            keyInput.focusable = true;
            keyInput.soundId = "";
            keyInput.soundType = "normal";
            keyInput.startDefKey = -1;
            keyInput.visible = true;
            try
            {
               keyInput["componentInspectorSetting"] = false;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      function __setProp_keyInput_KeysItemRenderer_key_60(param1:int) : *
      {
         if(!(keyInput == null) && param1 >= 61 && param1 <= 120 && (this.__setPropDict[keyInput] == undefined || !(int(this.__setPropDict[keyInput]) >= 61 && int(this.__setPropDict[keyInput]) <= 120)))
         {
            this.__setPropDict[keyInput] = param1;
            try
            {
               keyInput["componentInspectorSetting"] = true;
            }
            catch(e:Error)
            {
            }
            keyInput.enabled = false;
            keyInput.focusable = false;
            keyInput.soundId = "";
            keyInput.soundType = "normal";
            keyInput.startDefKey = -1;
            keyInput.visible = false;
            try
            {
               keyInput["componentInspectorSetting"] = false;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      function __setProp_handler(param1:Object) : *
      {
         var _loc2_:int = currentFrame;
         if(this.__lastFrameProp == _loc2_)
         {
            return;
         }
         this.__lastFrameProp = _loc2_;
         this.__setProp_keyInput_KeysItemRenderer_key_0(_loc2_);
         this.__setProp_keyInput_KeysItemRenderer_key_60(_loc2_);
      }
      
      function frame10() : *
      {
         stop();
      }
      
      function frame20() : *
      {
         stop();
      }
      
      function frame30() : *
      {
         stop();
      }
      
      function frame40() : *
      {
         stop();
      }
      
      function frame50() : *
      {
         stop();
      }
      
      function frame60() : *
      {
         stop();
      }
      
      function frame70() : *
      {
         stop();
      }
      
      function frame80() : *
      {
         stop();
      }
      
      function frame90() : *
      {
         stop();
      }
      
      function frame100() : *
      {
         stop();
      }
      
      function frame110() : *
      {
         stop();
      }
      
      function frame120() : *
      {
         stop();
      }
   }
}
