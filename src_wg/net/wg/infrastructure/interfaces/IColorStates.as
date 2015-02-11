package net.wg.infrastructure.interfaces
{
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   
   public interface IColorStates extends IDisposable
   {
      
      function getState(param1:String) : IColorState;
      
      function get def() : IColorState;
      
      function set def(param1:IColorState) : void;
      
      function get focused() : IColorState;
      
      function set focused(param1:IColorState) : void;
      
      function get disabled() : IColorState;
      
      function set disabled(param1:IColorState) : void;
      
      function get up() : IColorState;
      
      function set up(param1:IColorState) : void;
      
      function get over() : IColorState;
      
      function set over(param1:IColorState) : void;
      
      function get out() : IColorState;
      
      function set out(param1:IColorState) : void;
      
      function get down() : IColorState;
      
      function set down(param1:IColorState) : void;
      
      function get release() : IColorState;
      
      function set release(param1:IColorState) : void;
      
      function get toggle() : IColorState;
      
      function set toggle(param1:IColorState) : void;
      
      function get selected_() : IColorState;
      
      function set selected_(param1:IColorState) : void;
   }
}
