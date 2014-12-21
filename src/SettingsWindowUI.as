/*
   Copyright (C) 2014, 4lCapwn and CS2001

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>
 */

package
{
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
	import flash.text.engine.*;
	import flash.text.ime.*;
	import flash.ui.*;
	import flash.utils.*;
	import flash.xml.*;
	import net.wg.gui.lobby.settings.SettingsWindow;
	import settingsWindow_fla.Explosion_25;
	import settingsWindow_fla.HitLabelMC_27;
	import settingsWindow_fla.marker_bg_58;
	import net.wg.gui.events.ViewStackEvent;
	import scaleform.clik.events.ButtonEvent;
	import net.wg.gui.lobby.settings.SettingsChangesMap;
	import scaleform.clik.events.IndexEvent;
	import net.wg.gui.lobby.settings.SettingsConfig;
	import scaleform.clik.data.DataProvider;
	/*
	import settingsWindow_fla.marker_bg_56;
	import settingsWindow_fla.Explosion_24;
	import settingsWindow_fla.HitLabelMC_26;
	import settingsWindow_fla.marker_bg_57;
	*/
	
	public dynamic class SettingsWindowUI extends net.wg.gui.lobby.settings.SettingsWindow
	{
		
		/*
		 * The following is necessary, otherwise the Compiler will optimize those classes away and not include the files.
		 */
		
		private var uselessVar1:AdvancedGraphicContentFormUI;
		private var uselessVar2:AdvancedGraphicSettingsFormUI;
		private var uselessVar3:AdvSettingsScrollPane;
		private var uselessVar4:AimForm;
		private var uselessVar5:AimSettings;
		private var uselessVar6:AnimateExplosion;
		private var uselessVar7:App;
		private var uselessVar8:AttackEnemyMarker;
		private var uselessVar9:ControlsSettings;
		private var uselessVar10:DebugUtils;
		private var uselessVar11:FieldSet_Line;
		private var uselessVar12:GameSettings;
		private var uselessVar13:GraphicSettings;
		private var uselessVar14:HealthBar;
		private var uselessVar15:HealthBarAnimatedLabel;
		private var uselessVar16:HitSplash;
		private var uselessVar17:KeyInput;
		private var uselessVar18:KeyInputAlert;
		private var uselessVar19:keyItemUnderline;
		private var uselessVar20:KeysItemRenderer;
		private var uselessVar21:keysItemRenderer_hitArea;
		private var uselessVar22:KeysScrollingList;
		private var uselessVar23:markerForm;
		private var uselessVar24:MarkerSettings;
		private var uselessVar25:RES_ICONS;
		private var uselessVar26:ScreenSettingsFormUI;
		private var uselessVar27:ScrollBar_track;
		private var uselessVar28:SETTINGS;
		private var uselessVar29:SettingsStepSliderUI;
		private var uselessVar30:Slider_Thumb;
		private var uselessVar31:Slider_Track;
		private var uselessVar32:Slider_Track_Up;
		private var uselessVar33:SoundSettings;
		private var uselessVar34:SoundVoiceWaves;
		private var uselessVar35:Step_Slider_Track;
		private var uselessVar36:Step_Slider_Track_Up;
		private var uselessVar37:TOOLTIPS;
		private var uselessVar38:VehicleActionMarker;
		private var uselessVar39:Window_BG;
		private var uselessVar40:WindowTabButton_BG;
		private var uselessVar44:MyScrollPane;
		private var uselessVar46:RadioButtonBar_UI;
		private var uselessVar47:OtherSettings;
		private var uselessVar48:Explosion_25;
		private var uselessVar49:HitLabelMC_27;
		private var uselessVar50:marker_bg_58;
		
		public static var instance; // Instance of the Settings Window, required so that mods can use the .send() function.
		public static var mcommandId = 0; // This var is required for out logging tool
		public static var loglevel = 5;
		
		public static var fresh:Boolean = false;
		
		
		public function SettingsWindowUI()
		{
			try
			{
				SettingsWindowUI.fresh = true;
				SettingsConfig.tabsDataProvider = Array = [{label: SETTINGS.GAMETITLE, linkage: SettingsConfig.GAME_SETTINGS}, {label: SETTINGS.GRAFICTITLE, linkage: SettingsConfig.GRAPHIC_SETTINGS}, {label: SETTINGS.SOUNDTITLE, linkage: SettingsConfig.SOUND_SETTINGS}, {label: SETTINGS.KEYBOARDTITLE, linkage: SettingsConfig.CONTROLS_SETTINGS}, {label: SETTINGS.CURSORTITLE, linkage: SettingsConfig.CURSOR_SETTINGS}, {label: SETTINGS.MARKERTITLE, linkage: SettingsConfig.MARKER_SETTINGS}, {label: "Mods", linkage: "ModSettings"}];
				
				super();
				this.__setProp_applyBtn_SettingsWindow_btns_0();
				this.__setProp_cancelBtn_SettingsWindow_btns_0();
				this.__setProp_submitBtn_SettingsWindow_btns_0();
				this.__setProp_view_SettingsWindow_view_0();
				this.__setProp_tabs_SettingsWindow_tabbar_0();
				
				this.applyBtn.addEventListener(ButtonEvent.CLICK, this.myApplyButtonHandler, false, 0, true);
				//SettingsWindowUI.send("SettingsWindowUI() end", 1);
				SettingsWindowUI.instance = this;
				return;
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("SettingsWindowUI() Error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		public static function mSyncEncoded(param1:String, param2:String):*
		{
			var _loc6_:* = undefined;
			var _loc10_:* = NaN;
			var _loc11_:String = null;
			var _loc12_:* = undefined;
			var _loc13_:* = undefined;
			var _loc14_:* = undefined;
			var _loc3_:Array = param2.split("");
			var _loc4_:* = "";
			var _loc5_:Number = _loc3_.length;
			_loc6_ = 0;
			while (_loc6_ < _loc5_)
			{
				_loc10_ = _loc3_[_loc6_].charCodeAt(0);
				_loc11_ = _loc10_ < 128 ? _loc10_.toString(16) : escape(_loc3_[_loc6_].charAt(0)).split("%").join("");
				_loc4_ = _loc4_ + ((_loc11_.length % 2 == 0 ? "" : "0") + _loc11_);
				_loc6_++;
			}
			var param1:String = param1 + (" " + "B" + (mcommandId++).toString(16) + ",");
			var _loc7_:* = 0;
			_loc4_ = _loc4_.length.toString(16) + "," + _loc4_;
			var _loc8_:Array = [];
			while (_loc4_.length > 0)
			{
				_loc11_ = param1 + (_loc7_++).toString(16) + ",";
				_loc12_ = Math.min(_loc4_.length, 100 - _loc11_.length);
				_loc8_.push(_loc11_ + _loc4_.slice(0, _loc12_));
				_loc4_ = _loc4_.slice(_loc12_);
			}
			var _loc9_:* = _loc8_.length;
			_loc6_ = 0;
			while (_loc6_ < _loc8_.length)
			{
				_loc13_ = new URLRequest(_loc8_[_loc6_]);
				_loc14_ = new URLLoader();
				_loc14_.load(_loc13_);
				_loc6_++;
			}
		}
		
		public static function send(param1:String, param2:Number):*
		{
			if (param2 >= SettingsWindowUI.loglevel)
			{
				try
				{
					var logArray:Array = new Array("ModSettingsAPI", param1);
					DebugUtils.__doLog.apply(null, logArray);
					
				}
				catch (error:Error)
				{
					try
					{
						mSyncEncoded("../../../.wotcwlogger/@PLO", param1);
					}
					catch (error:Error)
					{
						// Well shit happens, our logging method crashed :P
					}
				}
			}
		}
		
		public var visitHomeURL:Function = null; // Contains the PythonFunction that we're going to call. It will open the URL in the Browser.
		
		public static function openURL(url:String)
		{
			//SettingsWindowUI.send("linkHandler " + url, 1);
			try
			{
				SettingsWindowUI.instance.visitHomeURL(url);
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::linkHandler() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		
		public function handleUpdateResponse(modname:String, update:Number)
		{
			//SettingsWindowUI.send("[SettingsWindowUI] " + modname + ' is using deprecated function handleUpdateResponse', 3);
			try
			{
				ModSettings.instance.handleUpdateReponse(modname, update);
				
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::handleUpdateResponse() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		public function handleMSAUpdaterPushState(modname:String, state:Number)
		{
			//SettingsWindowUI.send("[SettingsWindowUI] " + modname + ' is using deprecated function handleUpdateResponse', 3);
			try
			{
				ModSettings.instance.handleMSAUpdaterPushState(modname, update);
				
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::handleUpdateResponse() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		
		public var patchAvailable:Function = null; // Python Function again.
		
		public static function checkPatchAvailable(url:String, localversion:String, modname:String)
		{
			//SettingsWindowUI.send("patchAvailable " + url, 3);
			try
			{
				SettingsWindowUI.instance.patchAvailable(url, localversion, modname);
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::patchAvailable() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		public var writeModDataToDisk:Function = null; // Python...
		
		public function myApplyButtonHandler():void
		{
			try
			{
				SettingsWindowUI.fresh = true;
				writeModDataToDisk(ModSettings.instance.modsettings , 1);
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::myApplyButtonHandler() Error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		public var callRegisteredFunction:Function = null; // Contains the PythonFunction that we're going to call. It will call an registered function in python.
		
		public static function callRegisteredPythonFunction(name, objName, value:Object)
		{
			try
			{
				SettingsWindowUI.instance.callRegisteredFunction(name, objName, value);
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::callRegisteredPythonFunction() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		public override function as_setData(param1:Object):void
		{
			try
			{
				var tmp = param1['ModSettings'];
				delete param1['ModSettings'];
				SettingsWindowUI["receivedSettings"] = tmp;
				this.invalidateAllTabs();
				this.initializeCommonData(param1);
				SettingsWindowUI.fresh = true;
				SettingsWindowUI.instance = this;
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("initializeCommonData crashed mods=" + param1["ModSettings"], 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
			return;
		}
		
		// Original WG Code from here on
		
		function __setProp_applyBtn_SettingsWindow_btns_0() : *
      {
         try
         {
            applyBtn["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         applyBtn.autoRepeat = false;
         applyBtn.autoSize = "none";
         applyBtn.data = "";
         applyBtn.inspectableDisabledFillPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         applyBtn.enabled = true;
         applyBtn.enableInitCallback = false;
         applyBtn.focusable = true;
         applyBtn.helpConnectorLength = 12;
         applyBtn.helpDirection = "T";
         applyBtn.helpText = "";
         applyBtn.label = "normal btn";
         applyBtn.paddingHorizontal = 5;
         applyBtn.selected = false;
         applyBtn.soundId = "";
         applyBtn.soundType = "normal";
         applyBtn.toggle = false;
         applyBtn.tooltip = "";
         applyBtn.visible = true;
         try
         {
            applyBtn["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_cancelBtn_SettingsWindow_btns_0() : *
      {
         try
         {
            cancelBtn["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         cancelBtn.autoRepeat = false;
         cancelBtn.autoSize = "none";
         cancelBtn.data = "";
         cancelBtn.inspectableDisabledFillPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         cancelBtn.enabled = true;
         cancelBtn.enableInitCallback = false;
         cancelBtn.focusable = true;
         cancelBtn.helpConnectorLength = 12;
         cancelBtn.helpDirection = "T";
         cancelBtn.helpText = "";
         cancelBtn.label = "black btn";
         cancelBtn.paddingHorizontal = 5;
         cancelBtn.selected = false;
         cancelBtn.soundId = "";
         cancelBtn.soundType = "cancelButton";
         cancelBtn.toggle = false;
         cancelBtn.tooltip = "";
         cancelBtn.visible = true;
         try
         {
            cancelBtn["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_submitBtn_SettingsWindow_btns_0() : *
      {
         try
         {
            submitBtn["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         submitBtn.autoRepeat = false;
         submitBtn.autoSize = "none";
         submitBtn.data = "";
         submitBtn.inspectableDisabledFillPadding = {
            "top":0,
            "right":0,
            "bottom":0,
            "left":0
         };
         submitBtn.enabled = true;
         submitBtn.enableInitCallback = false;
         submitBtn.focusable = true;
         submitBtn.helpConnectorLength = 12;
         submitBtn.helpDirection = "T";
         submitBtn.helpText = "";
         submitBtn.label = "normal btn";
         submitBtn.paddingHorizontal = 5;
         submitBtn.selected = false;
         submitBtn.soundId = "";
         submitBtn.soundType = "okButton";
         submitBtn.toggle = false;
         submitBtn.tooltip = "";
         submitBtn.visible = true;
         try
         {
            submitBtn["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_view_SettingsWindow_view_0() : *
      {
         try
         {
            view["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         view.cache = true;
         view.enabled = true;
         view.enableInitCallback = false;
         view.targetGroup = "tabs";
         view.visible = true;
         try
         {
            view["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      function __setProp_tabs_SettingsWindow_tabbar_0() : *
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
         tabs.itemRendererName = "TabButton";
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
