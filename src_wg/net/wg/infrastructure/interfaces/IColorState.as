package net.wg.infrastructure.interfaces
{
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import flash.filters.BitmapFilter;
   
   public interface IColorState extends IDisposable
   {
      
      function get color() : Number;
      
      function set color(param1:Number) : void;
      
      function get filter() : BitmapFilter;
      
      function set filter(param1:BitmapFilter) : void;
   }
}
