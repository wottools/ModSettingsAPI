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
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.utils.*;
	import net.wg.gui.components.advanced.*;
	import net.wg.gui.components.controls.*;
	import net.wg.gui.lobby.settings.*;
	import scaleform.clik.core.*;
	import scaleform.clik.controls.*;
	import scaleform.clik.data.*;
	
	import flash.display.*;
	import fl.controls.Slider;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import fl.events.ScrollEvent;
	import flash.display.LoaderInfo;
	import scaleform.clik.controls.ScrollBar;
	import flash.net.*;
	import scaleform.clik.events.SliderEvent;
	import net.wg.gui.components.controls.KeysScrollingList;
	import net.wg.gui.lobby.settings.evnts.*;

	public dynamic class ModSettings extends SettingsBaseView
	{
		
		public static var instance:ModSettings;				//singleton needed to push update states to flash
		private var jsonPanels:Object;
		private var displayedMods:Object = new Object();
		private var mody = 15;
		
		public function ModSettings()
		{
			try
			{
				//at set scaleform.clik.controls::ButtonBar/selectedIndex()
				super();

				var stackTrace:String = new Error().getStackTrace();
				
				
				SettingsWindowUI.send("ModSetting() fresh=" + SettingsWindowUI.fresh, 2);
				SettingsWindowUI.send("ModSetting() stack=" +stackTrace, 2);
				
				var request:URLRequest = new URLRequest("controlsSimple.swf");
				var loader:Loader = new Loader()
				loader.load(request);
				this.modsettings = null;
				ModSettings.Instance = this;
				
				this.labelprefix = new Object();
				this.labelupdate = new Object();
				this.labelsuffix = new Object();
				this.fieldsets = new Object();
				setData(null);
				ModSettings.instance = this;
				if (!SettingsWindowUI.fresh||stackTrace.indexOf("at set scaleform.clik.controls::ButtonBar/selectedIndex()") >= 0)
				{
					
				}
				else
				{
					SettingsWindowUI.fresh = false;
				}
				
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::configUI() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		override protected function configUI():void
		{
			//SettingsWindowUI.send("ModSettings::configUI()", 1);
			try
			{
				var scroll = new MyScrollPane();
				this.myscrollpane = scroll;
				scroll.visible = true;
				scroll.enabled = true;
				scroll.width = 800;
				scroll.height = 520;
				var uicomp = new UIComponent();
				this.scrollpaneuicomp = uicomp;
				uicomp.width = 800;
				//uicomp.height = 501;
				uicomp.visible = true;
				uicomp.enabled = true;
				
				//t
				this.scrollpane = uicomp;
				scroll.target = uicomp;
				this.addChild(scroll);
				//SettingsWindowUI.send("_data=" + this._data, 1);
				if (this._data)
				{ //bei supercall fliegt exception. warum?
					this.setData(this._data);
				}
				
				SettingsWindowUI.instance.applyBtn.enabled = true;
				
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::configUI() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
			//SettingsWindowUI.send("ModSettings::configUI() end", 1);
		}
		
		private function linkHandler(linkEvent:TextEvent):void
		{
			SettingsWindowUI.openURL(linkEvent.text);
		}
		
		protected function handleUpdateReponse(modname:String, update:Number):void
		{
			setUpdateState(modname, update);
			
			this.fieldsets[modname].textField.htmlText = this.labelprefix[modname] + this.labelupdate[modname] + this.labelsuffix[modname];
			
			//SettingsWindowUI.send("ModSettings handleUpdateResponse " + modname + ' ' + update, 3);
			
			/*if (update)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#FF0000">update available</font> &#8212;'; //
			}
			else
			{
				this.labelupdate[modname] = ' &#8212; <font color="#01DF01">up to date</font> &#8212;'; // 
			}
			this.fieldsets[modname].textField.htmlText = this.labelprefix[modname] + this.labelupdate[modname] + this.labelsuffix[modname];
			//this.fieldsets[modname].textField.setTextFormat(this.fieldsets[modname].textField.getTextFormat());
			*/
		}
		
		protected function handleMSAUpdaterPushState(modname:String, update:Number):void
		{
			// not used yet
			//SettingsWindowUI.send("ModSettings handleUpdateResponse " + modname + ' ' + update, 3);
			
			/*
			if (update)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#FF0000">update available</font> &#8212;'; //
			}
			else
			{
				this.labelupdate[modname] = ' &#8212; <font color="#01DF01">up to date</font> &#8212;'; // 
			}
			*/
			//this.labelupdate[modname] = ' &#8212; <font color="#01DF01">'+update+'</font> &#8212;';
			setUpdateState(modname, update);
			this.fieldsets[modname].textField.htmlText = this.labelprefix[modname] + this.labelupdate[modname] + this.labelsuffix[modname];
			//this.fieldsets[modname].textField.setTextFormat(this.fieldsets[modname].textField.getTextFormat());
		}
		
		
		private function setUpdateState(modname:String, state:Number):void
		{
			if (state == 1)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#F7FE2E">checking for update...</font> &#8212;'; //&#8212;
			}
			else if (state == 2)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#FF0000">update available</font> &#8212;';
			}
			else if(state==3)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#F7FE2E">patching...</font> &#8212;'; //&#8212;
			}
			else if(state==4)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#F7FE2E">patch installed successfully</font> &#8212;'; //&#8212;
			}
			else if (state == 5)
			{
				this.labelupdate[modname] = ' &#8212; <font color="#01DF01">up to date</font> &#8212;'; // 
			}
			else
			{
				this.labelupdate[modname] = ' &#8212; <font color="#FF0000">update failed</font> &#8212;';
			}
		}
		
		private function addModSprite(swf:Object):void
		{
			try 
			{
				var modname = swf.getModname();
				SettingsWindowUI.send("ModSettings::addModSprite for " + modname +" at "+this.mody, 2);
				
				var modsprite = swf.getSprite(this.modsettings[swf.getModname()]['modsettings'], this.modsettings['ModSettings']['modsettings']['language']);
				if (modsprite != null)
				{
					//SettingsWindowUI.send("adding sprite", 1); //#			
					var fs = new FieldSet();
					
					this.labelprefix[modname] = '<b>' + modname + '</b> v' +this.modsettings[modname]['localversion']+ ' (' + this.modsettings[modname]['authors'] + ')'; // swf.getVersionString() //swf.getAuthors()
					this.labelupdate[modname] = '';
					this.labelsuffix[modname] = '';
					this.fieldsets[modname] = fs;
					//if (swf.getUpdateURL() != null)
					//{
						//this.labelupdate[modname] = ' &#8212; <font color="#F7FE2E">checking for update...</font> &#8212;'; //&#8212;
					setUpdateState(modname,1);
					SettingsWindowUI.checkPatchAvailable( this.modsettings[modname]['updateurl'], this.modsettings[modname]['localversion'], modname);
					//}
					
					//if (swf.getHomeURL() != null)
					//{
					this.labelsuffix[modname] = '  <a href="event:' +this.modsettings[modname]['homeurl']+ '"><u><font color="#3366ff">Visit this Mod\'s Homepage</font></u></a>'; //&#8212; //swf.getHomeURL() 
					//}
					
					fs.textField.htmlText = this.labelprefix[modname] + this.labelupdate[modname] + this.labelsuffix[modname];
					
					fs.textField.addEventListener(TextEvent.LINK, linkHandler);
					
					fs.width = 500;
					fs.textField.width = 500;
					
					fs.addChild(modsprite);
					fs.x = 10;
					fs.y = this.mody + 10;
					
					fs.enabled = true;
					fs.enableInitCallback = false;
					fs.showLabel = true;
					fs.visible = true;
					fs.width = 780;
					fs.height = modsprite.height;
					
					
					if (this.displayedMods[modname]!=undefined && this.displayedMods[modname]!=null)
					{
						fs.y = this.displayedMods[modname].y;
						this.scrollpane.removeChild(this.displayedMods[modname]);
						
					}
					this.mody = this.mody + fs.height + 10;

					this.scrollpaneuicomp.height = this.mody;
					
					this.displayedMods[modname] = fs;
					
					this.scrollpane.addChild(fs);
					this.myscrollpane.applyScrollBarUpdating();
					
					SettingsWindowUI.send("ModSettings::addModSprite for " + modname +" at "+this.mody, 2);
					
				}
				else
				{
					SettingsWindowUI.send("ModSettings::Sprite for "+modname+" was null.", 5);
				}
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::addModSprite() error on " + modname + ":" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
			
		}
		
		private function onLoadComplete(e:Event):void
		{
			try
			{
				var loaderInfo:LoaderInfo = e.target as LoaderInfo;
				var swf:Object = loaderInfo.content;
				addModSprite(swf);
				
				SettingsWindowUI.send("! onLoadComplete() has added: "+swf.getModname() , 3);
				
				// If the loaded file is the ModSettingsPanel, then we can start adding the JSON Panels.
				if (swf.getModname() == "ModSettings")
				{
					SettingsWindowUI.send("starting json loop0" , 2);
					for (var mod:Object in this.modsettings)
					{
						SettingsWindowUI.send("starting json loop1" , 2);
						try
						{
							SettingsWindowUI.send("starting json loop2"+this.modsettings[mod]['modsettings']['FlashSettingsFile'] , 2);
							if (this.modsettings[mod]['modsettings']['FlashSettingsFile'] == "json")
							{
								SettingsWindowUI.send("starting json loop3" , 2);
								
								//SettingsWindowUI.send("handling json mod:" + mod, 1);
								var modname = this.modsettings[mod]['modname'];
								SettingsWindowUI.send("starting json loop6" , 2);
								var authors = this.modsettings[mod]['authors'];
								var settings = this.modsettings[mod]['modsettings'];
								var layout = this.modsettings[mod]['layout'];
								var language = this.modsettings[mod]['languageStrings'];
								//SettingsWindowUI.send("Modname: " + mod + ", Authors: " + authors, 1);
								//SettingsWindowUI.send("layout: " + layout, 1);
								//SettingsWindowUI.send("language: " + language, 1);
								// JSON Layout, call our internal functions.
								SettingsWindowUI.send("starting json loop" , 2);
								addModSprite(new ModSettingsJSONPanel(modname, authors, layout, language));
								SettingsWindowUI.send("starting json loop" , 2);
							}
						}
						catch (error:Error)
						{
							SettingsWindowUI.send("onLoadComplete() error on " + mod + ":" + error, 5);
							SettingsWindowUI.send(error.getStackTrace(), 5);
						}
					}
				}
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("onLoadComplete() outter error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		
		}
		
		protected override function setData(param1:Object):void
		{
			try
			{
				this.mody = 15;
				param1 = SettingsWindowUI["receivedSettings"];
				this.modsettings = param1;
				SettingsWindowUI.send("setData: parsing mods...", 1);
				for (var mod:Object in param1)
				{
					SettingsWindowUI.send("setData: parsing mod "+mod, 1);
					try
					{
						var modname = param1[mod]['modname'];
						var authors = param1[mod]['authors'];
						var settings = param1[mod]['modsettings'];
						var layout = param1[mod]['layout'];
						var language = param1[mod]['languageStrings'];
						
						
						if (param1[mod]['modsettings']['FlashSettingsFile'] != "json")
						{
							// Load external SWF File
							// We're skipping jsons right now, because the scrollPane isn't ready at this point.
							// JSON Panels are added in the onLoadComplete function
							
							SettingsWindowUI.send("ModSettings::setData() loading file " + param1[mod]['modsettings']['FlashSettingsFile'], 2);
							var loader:Loader = new Loader();
							loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoadComplete);
							var req:URLRequest = new URLRequest(param1[mod]['modsettings']['FlashSettingsFile']);
							
							loader.load(req);
						}
					}
					catch (error:Error)
					{
						SettingsWindowUI.send("ModSettings::setData() error on " + mod + ":" + error, 5);
						SettingsWindowUI.send(error.getStackTrace(), 5);
					}
				}
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModSettings::setData() error:" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
		}
		
		function slider_onChange(event:SliderEvent):void
		{
			//SettingsWindowUI.send("slider_onChange() " + aSlider.value, 5);
		}
		
		public override function update(param1:Object):void
		{
			//SettingsWindowUI.send("update()=" + param1, 1);
			super.update(param1);
		} // end function
	}
}