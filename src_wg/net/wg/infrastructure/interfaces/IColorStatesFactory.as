package net.wg.infrastructure.interfaces
{
   import flash.filters.BitmapFilter;
   
   public interface IColorStatesFactory
   {
      
      function createBaseStates(param1:Number, param2:Number, param3:Number, param4:BitmapFilter = null, param5:BitmapFilter = null, param6:BitmapFilter = null) : IColorStates;
   }
}
