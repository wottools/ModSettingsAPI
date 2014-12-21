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

package {

	import flash.text.*;
	import flash.events.Event;
	import flash.utils.*;
	import net.wg.gui.components.advanced.*;
	import net.wg.gui.components.controls.*;
	import net.wg.gui.lobby.settings.*;
	import scaleform.clik.core.*;
	import scaleform.clik.controls.*;
	import flash.display.*;
	import fl.controls.Slider;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.display.LoaderInfo;
	import scaleform.clik.events.SliderEvent;



	public class ModSettingsJSONPanelStrings {
		private var strings: Object = null;
		public var language: String = "en"; //Default english, if no other available

		function ModSettingsJSONPanelStrings(languageStrings:Object) {
			this.strings = languageStrings;
			// Our default language
			setLanguage("en");
		}

		public function setLanguage(language: String): void {
			if (language in this.strings) {
				this.language = language;
			} else {
				this.language = "en";
			}
		}

		public function getLocalizedString(index: String): String {
			var returnValue = this.strings[this.language][index];
			if (returnValue === undefined) {
				// String not found in localization
				returnValue = this.strings["en"][index];
				if (returnValue === undefined) {
					returnValue = "String not found";
					SettingsWindowUI.send("GenericJSONPanel: A string with the index \""+index+"\" couldn't be found", 1)
				}
			}
			return returnValue;
		}
	}

}