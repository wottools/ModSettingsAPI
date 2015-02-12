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
	
	import flash.display.*;
	import flash.events.Event;
	import flash.text.*;
	import flash.utils.*;
	import net.wg.gui.components.advanced.*;
	import net.wg.gui.components.controls.*;
	import net.wg.gui.lobby.settings.*;
	import scaleform.clik.controls.Button;
	import scaleform.clik.core.*;
	import scaleform.clik.data.*;
	import scaleform.clik.events.*;
	import scaleform.clik.events.SliderEvent;
	import net.wg.gui.components.controls.TextInput;
	
	//import scaleform.clik.controls.*;
	//import fl.controls.Slider;
	
	public dynamic class ModSettingsJSONPanel extends UIComponent implements ModSettingsFlashAPI
	{
		protected var loadedSettings:Object;
		private var strings:ModSettingsJSONPanelStrings = null;
		private var modname:String = "";
		private var authors:String = "";
		private var layout:Object;
		
		private var itemList:Object;
		
		function ModSettingsJSONPanel(modname:String, authors:String, layout:Object, languageStrings:Object)
		{
			this.height = layout.height;
			this.modname = modname;
			this.authors = authors;
			this.layout = layout;
			
			// Now we're loading our language strings, to provide localized strings.
			this.strings = new ModSettingsJSONPanelStrings(languageStrings);
		}
		
		public function getSprite(loadedSettings:Object, language:String):UIComponent
		{
			try
			{
				// At this point we've recieved the settings that are currently set.
				//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: received settings: " + loadedSettings + ", language=" + language, 5);
				this.strings.setLanguage(language)
				this.loadedSettings = loadedSettings;
				
				// Create our GUI
				this.createUI();
			}
			catch (error:Error)
			{
				SettingsWindowUI.send("ModGUI::getSprite Error (GenericJSONPanel[\"" + this.modname + "\"]):" + error, 5);
				SettingsWindowUI.send(error.getStackTrace(), 5);
			}
			
			// return the created GUI to the Mod Panel.
			return this;
		}
		
		public function getAuthors():String
		{
			return this.authors;
		}
		
		public function getModname():String
		{
			return this.modname;
		}
		
		public function getHomeURL():String
		{
			return this.layout.homeUrl;
		}
		
		public function getUpdateURL():String
		{
			return this.layout.updateUrl;
		}
		
		public function getVersionString():String
		{
			return this.layout.version;
		}
		
		private function createCheckbox(varName, x, y, width, height, label, callback):CheckBox
		{
			var checkBox = new CheckBox();
			checkBox.label = this.strings.getLocalizedString(label);
			checkBox.x = x;
			checkBox.y = y;
			if (width != -1)
			{
				checkBox.width = width;
			}
			if (height != -1)
			{
				checkBox.height = height;
			}
			checkBox.configName = varName;
			checkBox.modSettingsCallback = callback;
			checkBox.selected = this.loadedSettings[varName];
			checkBox.addEventListener(Event.SELECT, this.onCheckBoxSelected);
			this.addChild(checkBox);
			return checkBox;
		}
		
		private function createTextField(varName, x, y, width, height, label):TextField
		{
			// This is a little workaround to get the font settings used by wargaming in the other panels.
			// We're creating a checkbox and take the textField from it and then add it to our GUI.
			var dummybox = new CheckBox();
			var textField = dummybox.textField;
			textField.htmlText = this.strings.getLocalizedString(label);
			textField.autoSize = TextFieldAutoSize.LEFT;
			textField.x = x;
			textField.y = y;
			
			//Although we don't need to read the value from this textfield, it might be useful later on, if we want to add functions to change the text within fields.
			//textField.configName = varName;
			if (width != -1)
			{
				textField.width = width;
			}
			if (height != -1)
			{
				textField.height = height;
			}
			this.addChild(textField);
			return textField;
		}
		
		private function createSlider(varName, x, y, width, height, label, callback, min, max, step, valueLabelDistance):Slider
		{
			var slider = new Slider();
			slider.minimum = min;
			slider.maximum = max;
			slider.snapping = true;
			slider.configName = varName;
			slider.modSettingsCallback = callback;
			slider.x = x;
			slider.y = y;
			slider.snapInterval = step;
			slider.value = this.loadedSettings[varName];
			if (width != -1)
			{
				slider.width = width;
			}
			if (height != -1)
			{
				slider.height = height;
			}
			slider.addEventListener(SliderEvent.VALUE_CHANGE, this.onSliderChange);
			
			this.addChild(slider);
			
			dummybox = new CheckBox();
			slider.valueField = dummybox.textField;
			slider.valueField.text = "" + slider.value;
			slider.valueField.autoSize = TextFieldAutoSize.LEFT;
			if (valueLabelDistance != -1)
			{
				slider.valueField.x = x + slider.width + valueLabelDistance;
			}else {
			
				slider.valueField.x = x + slider.width + 15;
				}
			slider.valueField.y = y + 2;
			
			this.addChild(slider.valueField);
			return slider;
		}
		
		private function createButton(varName, x, y, width, height, label, callback):Button
		{
			var button = new ButtonNormal()
			button.x = x;
			button.y = y;
			if (width != -1)
			{
				button.width = width;
			}
			if (height != -1)
			{
				button.height = height;
			}
			button.configName = varName;
			button.modSettingsCallback = callback;
			button.label = this.strings.getLocalizedString(label);
			button.addEventListener(ButtonEvent.CLICK, this.onButtonClicked);
			this.addChild(button);
			return button;
		}
		
		private function createDropdown(varName, x, y, width, height, label, callback, dataArray, useIcons):DropdownMenu
		{
			
			var dropDown = new DropdownMenu();
			dropDown.configName = varName;
			dropDown.modSettingsCallback = callback;
			dropDown.x = x;
			dropDown.y = y;
			if (width != -1)
			{
				dropDown.width = width;
			}
			if (height != -1)
			{
				dropDown.height = height;
			}
			
			var i:int = -1;
			
			//Create a copy of the data array, otherwise the localization won't work on second opening of the settings window
			var newDataArray = Array = [];
			while (++i < dataArray.length)
			{
				if (dataArray[0].hasOwnProperty("icon"))
				{
					var newEntry = {"label": this.strings.getLocalizedString(dataArray[i].label), "data": dataArray[i].data, "icon": dataArray[i].icon}
					newDataArray.push(newEntry)
				}
				else
				{
					var newEntry = {"label": this.strings.getLocalizedString(dataArray[i].label), "data": dataArray[i].data}
					newDataArray.push(newEntry)
				}
			}
			;
			
			dropDown.dataProvider = new DataProvider(newDataArray);
			dropDown.selectedIndex = this.loadedSettings[varName];
			dropDown.addEventListener(ListEvent.INDEX_CHANGE, this.onDropDownChanged);
			this.addChild(dropDown);
			if (dataArray[0].hasOwnProperty("icon"))
			{
				setDropDownProperties(dropDown, 11, true);
			}
			else
			{
				setDropDownProperties(dropDown, 11, false);
			}
			
			for (var ind in dataArray)
			{
				if (dropDown.dataProvider[ind]["data"] == this.loadedSettings[varName])
				{
					dropDown.selectedIndex = ind;
					break;
				}
			}
			return dropDown;
		}
		
		private function createTextInput(varName, x, y, width, height, label, callback):TextInput
		{
			var textinput = new TextInput()
			textinput.x = x;
			textinput.y = y;
			if (textinput != -1)
			{
				textinput.width = width;
			}
			if (height != -1)
			{
				textinput.height = height;
			}
			textinput.configName = varName;
			textinput.modSettingsCallback = callback;
			//textinput.label = this.strings.getLocalizedString(label);
			textinput.text = this.loadedSettings[varName]
			textinput.addEventListener(InputEvent.INPUT, this.onTextInput);
			this.addChild(textinput);
			return textinput;
		}
		
		public function createUI()
		{
			for (var parent:Object in this.layout.items)
			{
				try
				{
					//Location for the object, required
					var x = this.layout.items[parent].x;
					var y = this.layout.items[parent].y;
					
					//The variable name used in the config, required
					//We'll also use this name to reference these objects
					var varName = parent;
					
					//Size attributes, optional
					var width = -1;
					if (this.layout.items[parent].hasOwnProperty("width"))
					{
						width = this.layout.items[parent].width
					}
					var height = -1;
					if (this.layout.items[parent].hasOwnProperty("height"))
					{
						height = this.layout.items[parent].height
					}
					
					var ModSettingsCallback = "";
					if (this.layout.items[parent].hasOwnProperty("callback"))
					{
						ModSettingsCallback = this.layout.items[parent].callback
					}
					
					
					
					//Label attribute, required on: checkbox, slider, textfield, button
					var label = this.layout.items[parent].label;
					
					//The object to create, this attribute is required.
					switch (this.layout.items[parent].type)
					{
						case "checkbox": 
							this.createCheckbox(varName, x, y, width, height, label, ModSettingsCallback);
							//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Created checkbox: " + varName, 1);
							break;
						case "slider": 
							var min = this.layout.items[parent].min;
							var max = this.layout.items[parent].max;
							var step = this.layout.items[parent].step;
							var valueLabelDistance = -1;
							if (this.layout.items[parent].hasOwnProperty("valueLabelDistance"))
							{
								valueLabelDistance = this.layout.items[parent].valueLabelDistance
							}
							this.createSlider(varName, x, y, width, height, label, ModSettingsCallback, min, max, step, valueLabelDistance);
							//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Created slider: " + varName, 1);
							break;
						case "textfield": 
							this.createTextField(varName, x, y, width, height, label);
							//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Created textfield: " + varName, 1);
							break;
						case "dropdown": 
							// dataArray is required, will automatically decide, if it's a dropdownmenu with icons or without
							var dataArray = this.layout.items[parent].dataArray;
							this.createDropdown(varName, x, y, width, height, label, ModSettingsCallback, dataArray)
							//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Created dropdown: " + varName, 1);
							break;
						case "button": 
							this.createButton(varName, x, y, width, height, label, ModSettingsCallback);
							//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Created button: " + varName, 1);
							break;
						case "textinput": 
							this.createTextInput(varName, x, y, width, height, label, ModSettingsCallback);
							//SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Created TextInput: " + varName, 1);
							break;
						case "radio": 
							break;
						default: 
							SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Unknown object type in " + this.layout.items[parent].type, 5);
							break;
					}
				}
				catch (error:Error)
				{
					SettingsWindowUI.send("GenericJSONPanel[\"" + this.modname + "\"]: Error while parsing JSON " + parent, 5);
					SettingsWindowUI.send(error.getStackTrace(), 5);
				}
			}
		}
		
		function setDropDownProperties(dropDownObject:DropdownMenu, rowCount:uint, useIcons:Boolean):*
		{
			try
			{
				dropDownObject["componentInspectorSetting"] = true;
			}
			catch (e:Error)
			{
			}
			dropDownObject.autoSize = "none";
			dropDownObject.dropdown = "DropdownMenu_ScrollingList";
			dropDownObject.enabled = true;
			dropDownObject.enableInitCallback = false;
			dropDownObject.focusable = true;
			if (useIcons)
			{
				dropDownObject.itemRenderer = "ListItemRedererImageText";
			}
			else
			{
				dropDownObject.itemRenderer = "DropDownListItemRendererSound";
			}
			dropDownObject.menuDirection = "up";
			dropDownObject.menuMargin = 2;
			dropDownObject.inspectableMenuOffset = {"top": 0, "right": 0, "bottom": 4, "left": 3};
			dropDownObject.inspectableMenuPadding = {"top": 0, "right": 0, "bottom": -1, "left": 0};
			dropDownObject.menuRowCount = rowCount;
			dropDownObject.menuRowsFixed = false;
			dropDownObject.menuWidth = 151;
			dropDownObject.menuWrapping = "normal";
			dropDownObject.scrollBar = "";
			dropDownObject.showEmptyItems = true;
			dropDownObject.soundId = "";
			dropDownObject.soundType = "";
			dropDownObject.inspectableThumbOffset = {"top": 0, "bottom": 0};
			dropDownObject.visible = true;
			try
			{
				dropDownObject["componentInspectorSetting"] = false;
			}
			catch (e:Error)
			{
			}
		}
		
		function onSliderChange(event:SliderEvent):void
		{
			var slider = Slider(event.target);
			slider.valueField.text = "" + event.value;
			this.loadedSettings[slider.configName] = event.value;
			if (slider.modSettingsCallback != "")
			{
				SettingsWindowUI.callRegisteredPythonFunction(slider.modSettingsCallback, slider.configName, event.value)
			}
		}
		
		function onCheckBoxSelected(event:Event):void
		{
			var box = CheckBox(event.target);
			this.loadedSettings[box.configName] = box.selected;
			if (box.modSettingsCallback != "")
			{
				SettingsWindowUI.callRegisteredPythonFunction(box.modSettingsCallback, box.configName, box.selected)
			}
			//SettingsWindowUI.send("GenericJSONPanel[\""+this.modname+"\"]: onCheckBoxSelected:" + box.configName, 1);
		}
		
		function onDropDownChanged(event:Event):void
		{
			var dropDown = DropdownMenu(event.target);
			this.loadedSettings[dropDown.configName] = event.itemData.data;
			if (dropDown.modSettingsCallback != "")
			{
				SettingsWindowUI.callRegisteredPythonFunction(dropDown.modSettingsCallback, dropDown.configName, event.itemData.data)
			}
		}
		
		function onButtonClicked(event:ButtonEvent):void
		{
			var button = Button(event.target);
			if (button.modSettingsCallback != "")
			{
				SettingsWindowUI.callRegisteredPythonFunction(button.modSettingsCallback, button.configName, "")
			}
		}
		
		function onTextInput(event:Event):void
		{
			var textinput = TextInput(event.target);
			this.loadedSettings[textinput.configName] = textinput.text;
			if (textinput.modSettingsCallback != "")
			{
				SettingsWindowUI.callRegisteredPythonFunction(textinput.modSettingsCallback, textinput.configName, textinput.text)
			}
		}
	
	}

}