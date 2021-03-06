package net.wg.infrastructure.base
{
   import net.wg.infrastructure.base.interfaces.IWindowGeometry;
   import net.wg.infrastructure.base.interfaces.IWindow;
   
   public class StoredWindowGeometry extends Object implements IWindowGeometry
   {
      
      public function StoredWindowGeometry(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this._x = param1;
         this._y = param2;
         this._width = param3;
         this._height = param4;
         this.doPositionOnce = false;
      }
      
      private var _x:Number;
      
      private var _y:Number;
      
      private var _width:Number;
      
      private var _height:Number;
      
      private var doPositionOnce:Boolean;
      
      public function canOverwrite() : Boolean
      {
         return false;
      }
      
      public function setSize(param1:IWindow) : Boolean
      {
         if(this._width > 0 && this._height > 0)
         {
            param1.updateSize(this._width,this._height);
         }
         else
         {
            param1.updateSize(param1.getMinWidth(),param1.getMinHeight());
         }
         return true;
      }
      
      public function setPosition(param1:IWindow) : Boolean
      {
         var _loc2_:* = false;
         if(!this.doPositionOnce && (param1))
         {
            param1.x = this._x;
            param1.y = this._y;
            this.doPositionOnce = true;
            _loc2_ = true;
         }
         return _loc2_;
      }
   }
}
