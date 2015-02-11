package net.wg.infrastructure.base
{
   import net.wg.infrastructure.base.meta.impl.WrapperViewMeta;
   import net.wg.infrastructure.base.meta.IWrapperViewMeta;
   import net.wg.gui.components.common.waiting.Waiting;
   import net.wg.infrastructure.interfaces.IWrapper;
   import net.wg.infrastructure.constants.WindowViewInvalidationType;
   
   public class AbstractWrapperView extends WrapperViewMeta implements IWrapperViewMeta
   {
      
      public function AbstractWrapperView()
      {
         super();
      }
      
      private var _waiting:Waiting;
      
      private var _wrapper:IWrapper;
      
      private var waitingMessage:String;
      
      private var _showWaiting:Boolean;
      
      public function get waiting() : Waiting
      {
         return this._waiting;
      }
      
      public function get wrapper() : IWrapper
      {
         return this._wrapper;
      }
      
      public function set wrapper(param1:IWrapper) : void
      {
         this._wrapper = param1;
         invalidateSize();
      }
      
      public function get showWaiting() : Boolean
      {
         return this._showWaiting;
      }
      
      public function set showWaiting(param1:Boolean) : void
      {
         if(this._showWaiting != param1)
         {
            this._showWaiting = param1;
            invalidate(WindowViewInvalidationType.WAITING_INVALID);
         }
      }
      
      public function as_showWaiting(param1:String, param2:Object) : void
      {
         this.waitingMessage = param1;
         this.showWaiting = true;
      }
      
      public function as_hideWaiting() : void
      {
         this.showWaiting = false;
      }
      
      override protected function draw() : void
      {
         if(isInvalid(WindowViewInvalidationType.WAITING_INVALID))
         {
            this.applyWaitingChanges(width,height);
         }
         super.draw();
      }
      
      protected function applyWaitingChanges(param1:int, param2:int) : void
      {
         if(this._showWaiting)
         {
            if(!this._waiting)
            {
               this._waiting = new Waiting();
               addChild(this._waiting);
               this._waiting.setSize(param1,param2);
               this._waiting.validateNow();
            }
            this._waiting.setMessage(this.waitingMessage);
         }
         if(this._waiting)
         {
            if(this._showWaiting)
            {
               this._waiting.show();
            }
            else
            {
               this._waiting.hide();
            }
         }
      }
      
      override protected function onDispose() : void
      {
         if(this._waiting)
         {
            this._waiting.dispose();
            if(this._waiting.parent)
            {
               this._waiting.parent.removeChild(this._waiting);
            }
            this._waiting = null;
         }
         if(this._wrapper)
         {
            this._wrapper.dispose();
            this._wrapper = null;
         }
         super.onDispose();
      }
   }
}
