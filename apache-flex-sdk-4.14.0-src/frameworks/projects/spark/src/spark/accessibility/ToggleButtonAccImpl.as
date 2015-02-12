////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////

package spark.accessibility
{

import mx.accessibility.AccConst;
import mx.accessibility.AccImpl
import mx.core.UIComponent;
import mx.core.mx_internal;

import spark.components.supportClasses.ToggleButtonBase;

use namespace mx_internal;

/**
 *  ToggleButtonAccImpl is the accessibility implementation class
 *  for spark.components.ToggleButton.
 *
 *  <p>When a Spark ToggleButton is created,
 *  its <code>accessibilityImplementation</code> property
 *  is set to an instance of this class.
 *  The Flash Player then uses this class to allow MSAA clients
 *  such as screen readers to see and manipulate the ToggleButton.
 *  See the mx.accessibility.AccImpl and
 *  flash.accessibility.AccessibilityImplementation classes
 *  for background information about accessibility implementation
 *  classes and MSAA.</p>
 *
 *  <p><b>Children</b></p>
 *
 *  <p>A ToggleButton has no MSAA children.</p>
 *
 *  <p><b>Role</b></p>
 *
 *  <p>The MSAA Role of a ToggleButton is ROLE_SYSTEM_PUSHBUTTON.</p>
 *
 *  <p><b>Name</b></p>
 *
 *  <p>The MSAA Name of a ToggleButton is, by default,
 *  the label that it displays.
 *  When wrapped in a FormItem element,
 *  this label will be combined with the FormItem's label.
 *  To override this behavior,
 *  set the ToggleButton's <code>accessibilityName</code> property.</p>
 *
 *  <p>To provide two separate names for the different states
 *  of an icon-based ToggleButton (such as "Mute" and "Unmute",
 *  or "Play" and "Pause"), both names can be separated by a comma
 *  in the <code>accessibilityName</code> property, as in
 *  <code>accessibilityProperty="Mute,Unmute"</code>.
 *  When using state specific names like this
 *  the button will not exposed the "pressed" state when pressed.</p>
 *
 *  <p>When the Name changes,
 *  a ToggleButton dispatches the MSAA event EVENT_OBJECT_NAMECHANGE.</p>
 *
 *  <p><b>Description</b></p>
 *
 *  <p>The MSAA Description of a ToggleButton is, by default, the empty string,
 *  but you can set the ToggleButton's <code>accessibilityDescription</code>
 *  property.</p>
 *
 *  <p><b>State</b></p>
 *
 *  <p>The MSAA State of a ToggleButton is a combination of:
 *  <ul>
 *    <li>STATE_SYSTEM_UNAVAILABLE (when enabled is false)</li>
 *    <li>STATE_SYSTEM_FOCUSABLE (when enabled is true)</li>
 *    <li>STATE_SYSTEM_FOCUSED (when enabled is true
 *    and the CheckBox has focus)</li>
 *    <li>STATE_SYSTEM_PRESSED (when selected is true;
 *    not used when state specific names are provided)</li>
 *  </ul></p>
 *
 *  <p>When the State changes,
 *  a ToggleButton dispatches the MSAA event EVENT_OBJECT_STATECHANGE.</p>
 *
 *  <p><b>Value</b></p>
 *
 *  <p>A ToggleButton does not have an MSAA Value.</p>
 *
 *  <p><b>Location</b></p>
 *
 *  <p>The MSAA Location of a ToggleButton is its bounding rectangle.</p>
 *
 *  <p><b>Default Action</b></p>
 *
 *  <p>The MSAA DefaultAction of a ToggleButton is "Toggle".</p>
 *
 *  <p>When an MSAA client tells the Button to perform this action,
 *  KEY_DOWN and KEY_UP MouseEvents for the SPACE key are generated,
 *  to simulate pressing the ToggleButton via the keyboard,
 *  if the ToggleButton is enabled.</p>
 *
 *  <p><b>Focus</b></p>
 *
 *  <p>A ToggleButton accepts focus.
 *  When it does so, it dispatches the MSAA event EVENT_OBJECT_FOCUS.</p>
 *
 *  <p><b>Selection</b></p>
 *
 *  <p>A ToggleButton does not support selection in the MSAA sense.</p>
 *
 *  @langversion 3.0
 *  @playerversion Flash 10
 *  @playerversion AIR 1.5
 *  @productversion Flex 4
 */
public class ToggleButtonAccImpl extends ButtonBaseAccImpl
{
    include "../core/Version.as";
    
    //--------------------------------------------------------------------------
    //
    //  Class methods
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Enables accessibility in the ToggleButton class.
     *
     *  <p>This method is called by application startup code
     *  that is autogenerated by the MXML compiler.
     *  Afterwards, when instances of ToggleButton are initialized,
     *  their <code>accessibilityImplementation</code> property
     *  will be set to an instance of this class.</p>
     *
     *  @langversion 3.0
     *  @playerversion Flash 10
     *  @playerversion AIR 1.5
     *  @productversion Flex 4
     */
    public static function enableAccessibility():void
    {
        ToggleButtonBase.createAccessibilityImplementation =
            createAccessibilityImplementation;
    }
    
    /**
     *  @private
     *  Creates a ToggleButton's AccessibilityImplementation object.
     *  This method is called from UIComponent's
     *  initializeAccessibility() method.
     */
    mx_internal static function createAccessibilityImplementation(
        component:UIComponent):void
    {
        component.accessibilityImplementation =
            new ToggleButtonAccImpl(component);
    }
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor.
     *
     *  @param master The UIComponent instance that this AccImpl instance
     *  is making accessible.
     *
     *  @langversion 3.0
     *  @playerversion Flash 10
     *  @playerversion AIR 1.5
     *  @productversion Flex 4
     */
    public function ToggleButtonAccImpl(master:UIComponent)
    {
        super(master);
    }
    
    //--------------------------------------------------------------------------
    //
    //  Overridden methods: AccessibilityImplementation
    //
    //--------------------------------------------------------------------------
    
    /**
     *  @private
     *  Returns the name of the component.
	 *  If accessibilityName is set and divided by a comma, the first part 
     *  will be exposed as the default name, and the second part as the name 
     *  when the button is pressed.
     *
     *  @param childID uint.
     *
     *  @return Name of the component.
     *
     */
    override public function get_accName(childID:uint):String
    {
        var accName:String;
        if (master.accessibilityName && master.accessibilityName.indexOf(",") != -1) 
        {
            accName = AccImpl.getFormName(master);
            var stateNames:Array = master.accessibilityName.split(",");
            accName += " " + (ToggleButtonBase(master).selected ? 
                stateNames[1] : stateNames[0]);
        }
        else
            accName = super.get_accName(0);
        
        return accName;
    }
    
    /**
     *  @private
     *  IAccessible method for returning the state of the ToggleButton.
     *  States are predefined for all the components in MSAA.
     *  Values are assigned to each state.
     *  Depending upon the Togglebutton being pressed or released,
     *  a value is returned.
     *
     *  @param childID uint
     *
     *  @return State uint
     */
    override public function get_accState(childID:uint):uint
    {
        var accState:uint = getState(childID);
        if (ToggleButtonBase(master).selected && (!master.accessibilityName ||
            master.accessibilityName.indexOf(",") == -1))
            accState |= AccConst.STATE_SYSTEM_PRESSED;
        
        return accState;
    }
    
}
    
}
