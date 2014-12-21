package
{
   import net.wg.gui.lobby.settings.GameSettings;
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
   
   public dynamic class GameSettings extends net.wg.gui.lobby.settings.GameSettings
   {
      
      public function GameSettings()
      {
         super();
         this.__setProp_fieldSetChat_GameSettings_fieldSets_0();
         this.__setProp_fieldSetBattlePanel_GameSettings_fieldSets_0();
         this.__setProp_fieldSetBattleTypes_GameSettings_fieldSets_0();
         this.__setProp_enableOlFilterCheckbox_GameSettings_controls_0();
         this.__setProp_minimapAlphaSlider_GameSettings_controls_0();
         this.__setProp_enableSpamFilterCheckbox_GameSettings_controls_0();
         this.__setProp_showDateMessageCheckbox_GameSettings_controls_0();
         this.__setProp_showTimeMessageCheckbox_GameSettings_controls_0();
         this.__setProp_invitesFromFriendsOnlyCheckbox_GameSettings_controls_0();
         this.__setProp_enableStoreCwsCheckbox_GameSettings_controls_0();
         this.__setProp_enableStoreMwsCheckbox_GameSettings_controls_0();
         this.__setProp_ppShowLevelsCheckbox_GameSettings_controls_0();
         this.__setProp_gameplay_ctfCheckbox_GameSettings_controls_0();
         this.__setProp_gameplay_dominationCheckbox_GameSettings_controls_0();
         this.__setProp_gameplay_assaultCheckbox_GameSettings_controls_0();
         this.__setProp_enablePostMortemEffectCheckbox_GameSettings_controls_0();
         this.__setProp_dynamicCameraCheckbox_GameSettings_controls_0();
         this.__setProp_useServerAimCheckbox_GameSettings_controls_0();
         this.__setProp_storeReceiverInBattleCheckbox_GameSettings_controls_0();
         this.__setProp_showVehiclesCounterCheckbox_GameSettings_controls_0();
         this.__setProp_horStabilizationSnpCheckbox_GameSettings_controls_0();
         this.__setProp_replayEnabledDropDown_GameSettings_controls_0();
         this.__setProp_enablePostMortemDelayCheckbox_GameSettings_controls_0();
         this.__setProp_disableBattleChatCheckbox_GameSettings_controls_0();
         this.__setProp_enableOpticalSnpEffectCheckbox_GameSettings_controls_0();
         this.__setProp_showMarksOnGunCheckbox_GameSettings_controls_0();
         this.__setProp_showVectorOnMapCheckbox_GameSettings_controls_0();
         this.__setProp_showSectorOnMapCheckbox_GameSettings_controls_0();
         this.__setProp_showVehModelsOnMapDropDown_GameSettings_controls_0();
         this.__setProp_showVehModelsOnMapLabel_GameSettings_controls_0();
      }
      
      function __setProp_fieldSetChat_GameSettings_fieldSets_0() : *
      {
         try
         {
            fieldSetChat["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fieldSetChat.enabled = true;
         fieldSetChat.enableInitCallback = false;
         fieldSetChat.label = "";
         fieldSetChat.margin = 5;
         fieldSetChat.showLabel = true;
         fieldSetChat.visible = true;
         try
         {
            fieldSetChat["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_fieldSetBattlePanel_GameSettings_fieldSets_0() : *
      {
         try
         {
            fieldSetBattlePanel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fieldSetBattlePanel.enabled = true;
         fieldSetBattlePanel.enableInitCallback = false;
         fieldSetBattlePanel.label = "";
         fieldSetBattlePanel.margin = 5;
         fieldSetBattlePanel.showLabel = true;
         fieldSetBattlePanel.visible = true;
         try
         {
            fieldSetBattlePanel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_fieldSetBattleTypes_GameSettings_fieldSets_0() : *
      {
         try
         {
            fieldSetBattleTypes["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         fieldSetBattleTypes.enabled = true;
         fieldSetBattleTypes.enableInitCallback = false;
         fieldSetBattleTypes.label = "";
         fieldSetBattleTypes.margin = 5;
         fieldSetBattleTypes.showLabel = true;
         fieldSetBattleTypes.visible = true;
         try
         {
            fieldSetBattleTypes["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enableOlFilterCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enableOlFilterCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enableOlFilterCheckbox.autoSize = "none";
         enableOlFilterCheckbox.data = "";
         enableOlFilterCheckbox.disabledTextAlpha = 0.5;
         enableOlFilterCheckbox.enabled = true;
         enableOlFilterCheckbox.enableInitCallback = false;
         enableOlFilterCheckbox.focusable = true;
         enableOlFilterCheckbox.infoIcoType = "";
         enableOlFilterCheckbox.label = "checkBox";
         enableOlFilterCheckbox.selected = false;
         enableOlFilterCheckbox.soundId = "";
         enableOlFilterCheckbox.soundType = "";
         enableOlFilterCheckbox.textColor = 9868935;
         enableOlFilterCheckbox.textFont = "$TextFont";
         enableOlFilterCheckbox.textSize = 12;
         enableOlFilterCheckbox.toolTip = "";
         enableOlFilterCheckbox.visible = true;
         try
         {
            enableOlFilterCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_minimapAlphaSlider_GameSettings_controls_0() : *
      {
         try
         {
            minimapAlphaSlider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         minimapAlphaSlider.enabled = true;
         minimapAlphaSlider.enableInitCallback = false;
         minimapAlphaSlider.focusable = true;
         minimapAlphaSlider.liveDragging = true;
         minimapAlphaSlider.maximum = 65;
         minimapAlphaSlider.minimum = 0;
         minimapAlphaSlider.snapInterval = 1;
         minimapAlphaSlider.snapping = true;
         minimapAlphaSlider.undefinedDisabled = false;
         minimapAlphaSlider.value = 0;
         minimapAlphaSlider.visible = true;
         try
         {
            minimapAlphaSlider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enableSpamFilterCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enableSpamFilterCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enableSpamFilterCheckbox.autoSize = "none";
         enableSpamFilterCheckbox.data = "";
         enableSpamFilterCheckbox.disabledTextAlpha = 0.5;
         enableSpamFilterCheckbox.enabled = true;
         enableSpamFilterCheckbox.enableInitCallback = false;
         enableSpamFilterCheckbox.focusable = true;
         enableSpamFilterCheckbox.infoIcoType = "";
         enableSpamFilterCheckbox.label = "checkBox";
         enableSpamFilterCheckbox.selected = false;
         enableSpamFilterCheckbox.soundId = "";
         enableSpamFilterCheckbox.soundType = "";
         enableSpamFilterCheckbox.textColor = 9868935;
         enableSpamFilterCheckbox.textFont = "$TextFont";
         enableSpamFilterCheckbox.textSize = 12;
         enableSpamFilterCheckbox.toolTip = "";
         enableSpamFilterCheckbox.visible = true;
         try
         {
            enableSpamFilterCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showDateMessageCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            showDateMessageCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showDateMessageCheckbox.autoSize = "none";
         showDateMessageCheckbox.data = "";
         showDateMessageCheckbox.disabledTextAlpha = 0.5;
         showDateMessageCheckbox.enabled = true;
         showDateMessageCheckbox.enableInitCallback = false;
         showDateMessageCheckbox.focusable = true;
         showDateMessageCheckbox.infoIcoType = "";
         showDateMessageCheckbox.label = "checkBox";
         showDateMessageCheckbox.selected = false;
         showDateMessageCheckbox.soundId = "";
         showDateMessageCheckbox.soundType = "";
         showDateMessageCheckbox.textColor = 9868935;
         showDateMessageCheckbox.textFont = "$TextFont";
         showDateMessageCheckbox.textSize = 12;
         showDateMessageCheckbox.toolTip = "";
         showDateMessageCheckbox.visible = true;
         try
         {
            showDateMessageCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showTimeMessageCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            showTimeMessageCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showTimeMessageCheckbox.autoSize = "none";
         showTimeMessageCheckbox.data = "";
         showTimeMessageCheckbox.disabledTextAlpha = 0.5;
         showTimeMessageCheckbox.enabled = true;
         showTimeMessageCheckbox.enableInitCallback = false;
         showTimeMessageCheckbox.focusable = true;
         showTimeMessageCheckbox.infoIcoType = "";
         showTimeMessageCheckbox.label = "checkBox";
         showTimeMessageCheckbox.selected = false;
         showTimeMessageCheckbox.soundId = "";
         showTimeMessageCheckbox.soundType = "";
         showTimeMessageCheckbox.textColor = 9868935;
         showTimeMessageCheckbox.textFont = "$TextFont";
         showTimeMessageCheckbox.textSize = 12;
         showTimeMessageCheckbox.toolTip = "";
         showTimeMessageCheckbox.visible = true;
         try
         {
            showTimeMessageCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_invitesFromFriendsOnlyCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            invitesFromFriendsOnlyCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         invitesFromFriendsOnlyCheckbox.autoSize = "none";
         invitesFromFriendsOnlyCheckbox.data = "";
         invitesFromFriendsOnlyCheckbox.disabledTextAlpha = 0.5;
         invitesFromFriendsOnlyCheckbox.enabled = true;
         invitesFromFriendsOnlyCheckbox.enableInitCallback = false;
         invitesFromFriendsOnlyCheckbox.focusable = true;
         invitesFromFriendsOnlyCheckbox.infoIcoType = "";
         invitesFromFriendsOnlyCheckbox.label = "checkBox";
         invitesFromFriendsOnlyCheckbox.selected = false;
         invitesFromFriendsOnlyCheckbox.soundId = "";
         invitesFromFriendsOnlyCheckbox.soundType = "";
         invitesFromFriendsOnlyCheckbox.textColor = 9868935;
         invitesFromFriendsOnlyCheckbox.textFont = "$TextFont";
         invitesFromFriendsOnlyCheckbox.textSize = 12;
         invitesFromFriendsOnlyCheckbox.toolTip = "";
         invitesFromFriendsOnlyCheckbox.visible = true;
         try
         {
            invitesFromFriendsOnlyCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enableStoreCwsCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enableStoreCwsCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enableStoreCwsCheckbox.autoSize = "none";
         enableStoreCwsCheckbox.data = "";
         enableStoreCwsCheckbox.disabledTextAlpha = 0.5;
         enableStoreCwsCheckbox.enabled = true;
         enableStoreCwsCheckbox.enableInitCallback = false;
         enableStoreCwsCheckbox.focusable = true;
         enableStoreCwsCheckbox.infoIcoType = "";
         enableStoreCwsCheckbox.label = "checkBox";
         enableStoreCwsCheckbox.selected = false;
         enableStoreCwsCheckbox.soundId = "";
         enableStoreCwsCheckbox.soundType = "";
         enableStoreCwsCheckbox.textColor = 9868935;
         enableStoreCwsCheckbox.textFont = "$TextFont";
         enableStoreCwsCheckbox.textSize = 12;
         enableStoreCwsCheckbox.toolTip = "";
         enableStoreCwsCheckbox.visible = true;
         try
         {
            enableStoreCwsCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enableStoreMwsCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enableStoreMwsCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enableStoreMwsCheckbox.autoSize = "none";
         enableStoreMwsCheckbox.data = "";
         enableStoreMwsCheckbox.disabledTextAlpha = 0.5;
         enableStoreMwsCheckbox.enabled = true;
         enableStoreMwsCheckbox.enableInitCallback = false;
         enableStoreMwsCheckbox.focusable = true;
         enableStoreMwsCheckbox.infoIcoType = "";
         enableStoreMwsCheckbox.label = "checkBox";
         enableStoreMwsCheckbox.selected = false;
         enableStoreMwsCheckbox.soundId = "";
         enableStoreMwsCheckbox.soundType = "";
         enableStoreMwsCheckbox.textColor = 9868935;
         enableStoreMwsCheckbox.textFont = "$TextFont";
         enableStoreMwsCheckbox.textSize = 12;
         enableStoreMwsCheckbox.toolTip = "";
         enableStoreMwsCheckbox.visible = true;
         try
         {
            enableStoreMwsCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_ppShowLevelsCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            ppShowLevelsCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         ppShowLevelsCheckbox.autoSize = "none";
         ppShowLevelsCheckbox.data = "";
         ppShowLevelsCheckbox.disabledTextAlpha = 0.5;
         ppShowLevelsCheckbox.enabled = true;
         ppShowLevelsCheckbox.enableInitCallback = false;
         ppShowLevelsCheckbox.focusable = true;
         ppShowLevelsCheckbox.infoIcoType = "";
         ppShowLevelsCheckbox.label = "checkBox";
         ppShowLevelsCheckbox.selected = false;
         ppShowLevelsCheckbox.soundId = "";
         ppShowLevelsCheckbox.soundType = "";
         ppShowLevelsCheckbox.textColor = 9868935;
         ppShowLevelsCheckbox.textFont = "$TextFont";
         ppShowLevelsCheckbox.textSize = 12;
         ppShowLevelsCheckbox.toolTip = "";
         ppShowLevelsCheckbox.visible = true;
         try
         {
            ppShowLevelsCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gameplay_ctfCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            gameplay_ctfCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gameplay_ctfCheckbox.autoSize = "none";
         gameplay_ctfCheckbox.data = "";
         gameplay_ctfCheckbox.disabledTextAlpha = 0.5;
         gameplay_ctfCheckbox.enabled = true;
         gameplay_ctfCheckbox.enableInitCallback = false;
         gameplay_ctfCheckbox.focusable = true;
         gameplay_ctfCheckbox.infoIcoType = "";
         gameplay_ctfCheckbox.label = "checkBox";
         gameplay_ctfCheckbox.selected = false;
         gameplay_ctfCheckbox.soundId = "";
         gameplay_ctfCheckbox.soundType = "";
         gameplay_ctfCheckbox.textColor = 9868935;
         gameplay_ctfCheckbox.textFont = "$TextFont";
         gameplay_ctfCheckbox.textSize = 12;
         gameplay_ctfCheckbox.toolTip = "";
         gameplay_ctfCheckbox.visible = true;
         try
         {
            gameplay_ctfCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gameplay_dominationCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            gameplay_dominationCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gameplay_dominationCheckbox.autoSize = "none";
         gameplay_dominationCheckbox.data = "";
         gameplay_dominationCheckbox.disabledTextAlpha = 0.5;
         gameplay_dominationCheckbox.enabled = true;
         gameplay_dominationCheckbox.enableInitCallback = false;
         gameplay_dominationCheckbox.focusable = true;
         gameplay_dominationCheckbox.infoIcoType = "";
         gameplay_dominationCheckbox.label = "checkBox";
         gameplay_dominationCheckbox.selected = false;
         gameplay_dominationCheckbox.soundId = "";
         gameplay_dominationCheckbox.soundType = "";
         gameplay_dominationCheckbox.textColor = 9868935;
         gameplay_dominationCheckbox.textFont = "$TextFont";
         gameplay_dominationCheckbox.textSize = 12;
         gameplay_dominationCheckbox.toolTip = "";
         gameplay_dominationCheckbox.visible = true;
         try
         {
            gameplay_dominationCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_gameplay_assaultCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            gameplay_assaultCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         gameplay_assaultCheckbox.autoSize = "none";
         gameplay_assaultCheckbox.data = "";
         gameplay_assaultCheckbox.disabledTextAlpha = 0.5;
         gameplay_assaultCheckbox.enabled = true;
         gameplay_assaultCheckbox.enableInitCallback = false;
         gameplay_assaultCheckbox.focusable = true;
         gameplay_assaultCheckbox.infoIcoType = "";
         gameplay_assaultCheckbox.label = "checkBox";
         gameplay_assaultCheckbox.selected = false;
         gameplay_assaultCheckbox.soundId = "";
         gameplay_assaultCheckbox.soundType = "";
         gameplay_assaultCheckbox.textColor = 9868935;
         gameplay_assaultCheckbox.textFont = "$TextFont";
         gameplay_assaultCheckbox.textSize = 12;
         gameplay_assaultCheckbox.toolTip = "";
         gameplay_assaultCheckbox.visible = true;
         try
         {
            gameplay_assaultCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enablePostMortemEffectCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enablePostMortemEffectCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enablePostMortemEffectCheckbox.autoSize = "none";
         enablePostMortemEffectCheckbox.data = "";
         enablePostMortemEffectCheckbox.disabledTextAlpha = 0.5;
         enablePostMortemEffectCheckbox.enabled = true;
         enablePostMortemEffectCheckbox.enableInitCallback = false;
         enablePostMortemEffectCheckbox.focusable = true;
         enablePostMortemEffectCheckbox.infoIcoType = "";
         enablePostMortemEffectCheckbox.label = "checkBox";
         enablePostMortemEffectCheckbox.selected = false;
         enablePostMortemEffectCheckbox.soundId = "";
         enablePostMortemEffectCheckbox.soundType = "";
         enablePostMortemEffectCheckbox.textColor = 9868935;
         enablePostMortemEffectCheckbox.textFont = "$TextFont";
         enablePostMortemEffectCheckbox.textSize = 12;
         enablePostMortemEffectCheckbox.toolTip = "";
         enablePostMortemEffectCheckbox.visible = true;
         try
         {
            enablePostMortemEffectCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_dynamicCameraCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            dynamicCameraCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         dynamicCameraCheckbox.autoSize = "none";
         dynamicCameraCheckbox.data = "";
         dynamicCameraCheckbox.disabledTextAlpha = 0.5;
         dynamicCameraCheckbox.enabled = true;
         dynamicCameraCheckbox.enableInitCallback = false;
         dynamicCameraCheckbox.focusable = true;
         dynamicCameraCheckbox.infoIcoType = "";
         dynamicCameraCheckbox.label = "checkBox";
         dynamicCameraCheckbox.selected = false;
         dynamicCameraCheckbox.soundId = "";
         dynamicCameraCheckbox.soundType = "";
         dynamicCameraCheckbox.textColor = 9868935;
         dynamicCameraCheckbox.textFont = "$TextFont";
         dynamicCameraCheckbox.textSize = 12;
         dynamicCameraCheckbox.toolTip = "";
         dynamicCameraCheckbox.visible = true;
         try
         {
            dynamicCameraCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_useServerAimCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            useServerAimCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         useServerAimCheckbox.autoSize = "none";
         useServerAimCheckbox.data = "";
         useServerAimCheckbox.disabledTextAlpha = 0.5;
         useServerAimCheckbox.enabled = true;
         useServerAimCheckbox.enableInitCallback = false;
         useServerAimCheckbox.focusable = true;
         useServerAimCheckbox.infoIcoType = "";
         useServerAimCheckbox.label = "checkBox";
         useServerAimCheckbox.selected = false;
         useServerAimCheckbox.soundId = "";
         useServerAimCheckbox.soundType = "";
         useServerAimCheckbox.textColor = 9868935;
         useServerAimCheckbox.textFont = "$TextFont";
         useServerAimCheckbox.textSize = 12;
         useServerAimCheckbox.toolTip = "";
         useServerAimCheckbox.visible = true;
         try
         {
            useServerAimCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_storeReceiverInBattleCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            storeReceiverInBattleCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         storeReceiverInBattleCheckbox.autoSize = "none";
         storeReceiverInBattleCheckbox.data = "";
         storeReceiverInBattleCheckbox.disabledTextAlpha = 0.5;
         storeReceiverInBattleCheckbox.enabled = true;
         storeReceiverInBattleCheckbox.enableInitCallback = false;
         storeReceiverInBattleCheckbox.focusable = true;
         storeReceiverInBattleCheckbox.infoIcoType = "";
         storeReceiverInBattleCheckbox.label = "checkBox";
         storeReceiverInBattleCheckbox.selected = false;
         storeReceiverInBattleCheckbox.soundId = "";
         storeReceiverInBattleCheckbox.soundType = "";
         storeReceiverInBattleCheckbox.textColor = 9868935;
         storeReceiverInBattleCheckbox.textFont = "$TextFont";
         storeReceiverInBattleCheckbox.textSize = 12;
         storeReceiverInBattleCheckbox.toolTip = "";
         storeReceiverInBattleCheckbox.visible = true;
         try
         {
            storeReceiverInBattleCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showVehiclesCounterCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            showVehiclesCounterCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showVehiclesCounterCheckbox.autoSize = "none";
         showVehiclesCounterCheckbox.data = "";
         showVehiclesCounterCheckbox.disabledTextAlpha = 0.5;
         showVehiclesCounterCheckbox.enabled = true;
         showVehiclesCounterCheckbox.enableInitCallback = false;
         showVehiclesCounterCheckbox.focusable = true;
         showVehiclesCounterCheckbox.infoIcoType = "";
         showVehiclesCounterCheckbox.label = "checkBox";
         showVehiclesCounterCheckbox.selected = false;
         showVehiclesCounterCheckbox.soundId = "";
         showVehiclesCounterCheckbox.soundType = "";
         showVehiclesCounterCheckbox.textColor = 9868935;
         showVehiclesCounterCheckbox.textFont = "$TextFont";
         showVehiclesCounterCheckbox.textSize = 12;
         showVehiclesCounterCheckbox.toolTip = "";
         showVehiclesCounterCheckbox.visible = true;
         try
         {
            showVehiclesCounterCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_horStabilizationSnpCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            horStabilizationSnpCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         horStabilizationSnpCheckbox.autoSize = "none";
         horStabilizationSnpCheckbox.data = "";
         horStabilizationSnpCheckbox.disabledTextAlpha = 0.5;
         horStabilizationSnpCheckbox.enabled = true;
         horStabilizationSnpCheckbox.enableInitCallback = false;
         horStabilizationSnpCheckbox.focusable = true;
         horStabilizationSnpCheckbox.infoIcoType = "";
         horStabilizationSnpCheckbox.label = "checkBox";
         horStabilizationSnpCheckbox.selected = false;
         horStabilizationSnpCheckbox.soundId = "";
         horStabilizationSnpCheckbox.soundType = "";
         horStabilizationSnpCheckbox.textColor = 9868935;
         horStabilizationSnpCheckbox.textFont = "$TextFont";
         horStabilizationSnpCheckbox.textSize = 12;
         horStabilizationSnpCheckbox.toolTip = "";
         horStabilizationSnpCheckbox.visible = true;
         try
         {
            horStabilizationSnpCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_replayEnabledDropDown_GameSettings_controls_0() : *
      {
         try
         {
            replayEnabledDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         replayEnabledDropDown.autoSize = "none";
         replayEnabledDropDown.dropdown = "DropdownMenu_ScrollingList";
         replayEnabledDropDown.enabled = true;
         replayEnabledDropDown.enableInitCallback = false;
         replayEnabledDropDown.focusable = true;
         replayEnabledDropDown.itemRenderer = "DropDownListItemRendererSound";
         replayEnabledDropDown.menuDirection = "down";
         replayEnabledDropDown.menuMargin = 1;
         replayEnabledDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         replayEnabledDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         replayEnabledDropDown.rowCount = 15;
         replayEnabledDropDown.menuRowsFixed = false;
         replayEnabledDropDown.menuWidth = -1;
         replayEnabledDropDown.menuWrapping = "normal";
         replayEnabledDropDown.scrollBar = "";
         replayEnabledDropDown.showEmptyItems = false;
         replayEnabledDropDown.soundId = "";
         replayEnabledDropDown.soundType = "";
         replayEnabledDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         replayEnabledDropDown.visible = true;
         try
         {
            replayEnabledDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enablePostMortemDelayCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enablePostMortemDelayCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enablePostMortemDelayCheckbox.autoSize = "none";
         enablePostMortemDelayCheckbox.data = "";
         enablePostMortemDelayCheckbox.disabledTextAlpha = 0.5;
         enablePostMortemDelayCheckbox.enabled = true;
         enablePostMortemDelayCheckbox.enableInitCallback = false;
         enablePostMortemDelayCheckbox.focusable = true;
         enablePostMortemDelayCheckbox.infoIcoType = "";
         enablePostMortemDelayCheckbox.label = "checkBox";
         enablePostMortemDelayCheckbox.selected = false;
         enablePostMortemDelayCheckbox.soundId = "";
         enablePostMortemDelayCheckbox.soundType = "";
         enablePostMortemDelayCheckbox.textColor = 9868935;
         enablePostMortemDelayCheckbox.textFont = "$TextFont";
         enablePostMortemDelayCheckbox.textSize = 12;
         enablePostMortemDelayCheckbox.toolTip = "";
         enablePostMortemDelayCheckbox.visible = true;
         try
         {
            enablePostMortemDelayCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_disableBattleChatCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            disableBattleChatCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         disableBattleChatCheckbox.autoSize = "none";
         disableBattleChatCheckbox.data = "";
         disableBattleChatCheckbox.disabledTextAlpha = 0.5;
         disableBattleChatCheckbox.enabled = true;
         disableBattleChatCheckbox.enableInitCallback = false;
         disableBattleChatCheckbox.focusable = true;
         disableBattleChatCheckbox.infoIcoType = "";
         disableBattleChatCheckbox.label = "checkBox";
         disableBattleChatCheckbox.selected = false;
         disableBattleChatCheckbox.soundId = "";
         disableBattleChatCheckbox.soundType = "";
         disableBattleChatCheckbox.textColor = 9868935;
         disableBattleChatCheckbox.textFont = "$TextFont";
         disableBattleChatCheckbox.textSize = 12;
         disableBattleChatCheckbox.toolTip = "";
         disableBattleChatCheckbox.visible = true;
         try
         {
            disableBattleChatCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_enableOpticalSnpEffectCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            enableOpticalSnpEffectCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         enableOpticalSnpEffectCheckbox.autoSize = "none";
         enableOpticalSnpEffectCheckbox.data = "";
         enableOpticalSnpEffectCheckbox.disabledTextAlpha = 0.5;
         enableOpticalSnpEffectCheckbox.enabled = true;
         enableOpticalSnpEffectCheckbox.enableInitCallback = false;
         enableOpticalSnpEffectCheckbox.focusable = true;
         enableOpticalSnpEffectCheckbox.infoIcoType = "";
         enableOpticalSnpEffectCheckbox.label = "checkBox";
         enableOpticalSnpEffectCheckbox.selected = false;
         enableOpticalSnpEffectCheckbox.soundId = "";
         enableOpticalSnpEffectCheckbox.soundType = "";
         enableOpticalSnpEffectCheckbox.textColor = 9868935;
         enableOpticalSnpEffectCheckbox.textFont = "$TextFont";
         enableOpticalSnpEffectCheckbox.textSize = 12;
         enableOpticalSnpEffectCheckbox.toolTip = "";
         enableOpticalSnpEffectCheckbox.visible = true;
         try
         {
            enableOpticalSnpEffectCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showMarksOnGunCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            showMarksOnGunCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showMarksOnGunCheckbox.autoSize = "none";
         showMarksOnGunCheckbox.data = "";
         showMarksOnGunCheckbox.disabledTextAlpha = 0.5;
         showMarksOnGunCheckbox.enabled = true;
         showMarksOnGunCheckbox.enableInitCallback = false;
         showMarksOnGunCheckbox.focusable = true;
         showMarksOnGunCheckbox.infoIcoType = "";
         showMarksOnGunCheckbox.label = "checkBox";
         showMarksOnGunCheckbox.selected = false;
         showMarksOnGunCheckbox.soundId = "";
         showMarksOnGunCheckbox.soundType = "";
         showMarksOnGunCheckbox.textColor = 9868935;
         showMarksOnGunCheckbox.textFont = "$TextFont";
         showMarksOnGunCheckbox.textSize = 12;
         showMarksOnGunCheckbox.toolTip = "";
         showMarksOnGunCheckbox.visible = true;
         try
         {
            showMarksOnGunCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showVectorOnMapCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            showVectorOnMapCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showVectorOnMapCheckbox.autoSize = "none";
         showVectorOnMapCheckbox.data = "";
         showVectorOnMapCheckbox.disabledTextAlpha = 0.5;
         showVectorOnMapCheckbox.enabled = true;
         showVectorOnMapCheckbox.enableInitCallback = false;
         showVectorOnMapCheckbox.focusable = true;
         showVectorOnMapCheckbox.infoIcoType = "";
         showVectorOnMapCheckbox.label = "checkBox";
         showVectorOnMapCheckbox.selected = false;
         showVectorOnMapCheckbox.soundId = "";
         showVectorOnMapCheckbox.soundType = "";
         showVectorOnMapCheckbox.textColor = 9868935;
         showVectorOnMapCheckbox.textFont = "$TextFont";
         showVectorOnMapCheckbox.textSize = 12;
         showVectorOnMapCheckbox.toolTip = "";
         showVectorOnMapCheckbox.visible = true;
         try
         {
            showVectorOnMapCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showSectorOnMapCheckbox_GameSettings_controls_0() : *
      {
         try
         {
            showSectorOnMapCheckbox["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showSectorOnMapCheckbox.autoSize = "none";
         showSectorOnMapCheckbox.data = "";
         showSectorOnMapCheckbox.disabledTextAlpha = 0.5;
         showSectorOnMapCheckbox.enabled = true;
         showSectorOnMapCheckbox.enableInitCallback = false;
         showSectorOnMapCheckbox.focusable = true;
         showSectorOnMapCheckbox.infoIcoType = "";
         showSectorOnMapCheckbox.label = "checkBox";
         showSectorOnMapCheckbox.selected = false;
         showSectorOnMapCheckbox.soundId = "";
         showSectorOnMapCheckbox.soundType = "";
         showSectorOnMapCheckbox.textColor = 9868935;
         showSectorOnMapCheckbox.textFont = "$TextFont";
         showSectorOnMapCheckbox.textSize = 12;
         showSectorOnMapCheckbox.toolTip = "";
         showSectorOnMapCheckbox.visible = true;
         try
         {
            showSectorOnMapCheckbox["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showVehModelsOnMapDropDown_GameSettings_controls_0() : *
      {
         try
         {
            showVehModelsOnMapDropDown["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showVehModelsOnMapDropDown.autoSize = "none";
         showVehModelsOnMapDropDown.dropdown = "DropdownMenu_ScrollingList";
         showVehModelsOnMapDropDown.enabled = true;
         showVehModelsOnMapDropDown.enableInitCallback = false;
         showVehModelsOnMapDropDown.focusable = true;
         showVehModelsOnMapDropDown.itemRenderer = "DropDownListItemRendererSound";
         showVehModelsOnMapDropDown.menuDirection = "down";
         showVehModelsOnMapDropDown.menuMargin = 1;
         showVehModelsOnMapDropDown.inspectableMenuOffset = {
            "top":-5,
            "right":0,
            "bottom":0,
            "left":3
         };
         showVehModelsOnMapDropDown.inspectableMenuPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         showVehModelsOnMapDropDown.rowCount = 15;
         showVehModelsOnMapDropDown.menuRowsFixed = false;
         showVehModelsOnMapDropDown.menuWidth = -1;
         showVehModelsOnMapDropDown.menuWrapping = "normal";
         showVehModelsOnMapDropDown.scrollBar = "";
         showVehModelsOnMapDropDown.showEmptyItems = false;
         showVehModelsOnMapDropDown.soundId = "";
         showVehModelsOnMapDropDown.soundType = "";
         showVehModelsOnMapDropDown.inspectableThumbOffset = {
            "top":0,
            "bottom":0
         };
         showVehModelsOnMapDropDown.visible = true;
         try
         {
            showVehModelsOnMapDropDown["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_showVehModelsOnMapLabel_GameSettings_controls_0() : *
      {
         try
         {
            showVehModelsOnMapLabel["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         showVehModelsOnMapLabel.autoSize = "none";
         showVehModelsOnMapLabel.enabled = true;
         showVehModelsOnMapLabel.enableInitCallback = false;
         showVehModelsOnMapLabel.text = "n/a";
         showVehModelsOnMapLabel.textAlign = "none";
         showVehModelsOnMapLabel.visible = true;
         try
         {
            showVehModelsOnMapLabel["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}
