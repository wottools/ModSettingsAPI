package
{
   import net.wg.gui.lobby.settings.MarkerSettings;
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
   
   public dynamic class MarkerSettings extends net.wg.gui.lobby.settings.MarkerSettings
   {
      
      public function MarkerSettings()
      {
         super();
         this.__setProp_markerDead_MarkerSettings_dead_0();
         this.__setProp_markerDeadAlt_MarkerSettings_dead_0();
         this.__setProp_markerAlly_MarkerSettings_ally_0();
         this.__setProp_markerAllyAlt_MarkerSettings_ally_0();
         this.__setProp_markerEnemy_MarkerSettings_enemy_0();
         this.__setProp_markerEnemyAlt_MarkerSettings_enemy_0();
         this.__setProp_tabs_MarkerSettings_tabs_0();
      }
      
      function __setProp_markerDead_MarkerSettings_dead_0() : *
      {
         try
         {
            markerDead["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerDead.enabled = true;
         markerDead.enableInitCallback = false;
         markerDead.visible = false;
         try
         {
            markerDead["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerDeadAlt_MarkerSettings_dead_0() : *
      {
         try
         {
            markerDeadAlt["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerDeadAlt.enabled = true;
         markerDeadAlt.enableInitCallback = false;
         markerDeadAlt.visible = false;
         try
         {
            markerDeadAlt["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAlly_MarkerSettings_ally_0() : *
      {
         try
         {
            markerAlly["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAlly.enabled = true;
         markerAlly.enableInitCallback = false;
         markerAlly.visible = false;
         try
         {
            markerAlly["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerAllyAlt_MarkerSettings_ally_0() : *
      {
         try
         {
            markerAllyAlt["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerAllyAlt.enabled = true;
         markerAllyAlt.enableInitCallback = false;
         markerAllyAlt.visible = false;
         try
         {
            markerAllyAlt["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerEnemy_MarkerSettings_enemy_0() : *
      {
         try
         {
            markerEnemy["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerEnemy.enabled = true;
         markerEnemy.enableInitCallback = false;
         markerEnemy.visible = false;
         try
         {
            markerEnemy["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_markerEnemyAlt_MarkerSettings_enemy_0() : *
      {
         try
         {
            markerEnemyAlt["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         markerEnemyAlt.enabled = true;
         markerEnemyAlt.enableInitCallback = false;
         markerEnemyAlt.visible = false;
         try
         {
            markerEnemyAlt["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_tabs_MarkerSettings_tabs_0() : *
      {
         try
         {
            tabs["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         tabs.autoSize = "right";
         tabs.buttonWidth = 0.0;
         tabs.direction = "horizontal";
         tabs.enabled = true;
         tabs.enableInitCallback = false;
         tabs.focusable = true;
         tabs.itemRendererName = "SmallTabButton";
         tabs.paddingHorizontal = 15;
         tabs.spacing = 0;
         tabs.visible = true;
         try
         {
            tabs["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
