package
{
   import net.wg.gui.components.common.markers.HealthBarAnimatedLabel;
   import net.wg.gui.events.TimelineEvent;
   
   public dynamic class HealthBarAnimatedLabel extends net.wg.gui.components.common.markers.HealthBarAnimatedLabel
   {
      
      public function HealthBarAnimatedLabel()
      {
         super();
         addFrameScript(16,this.frame17,51,this.frame52,95,this.frame96,97,this.frame98);
      }
      
      function frame17() : *
      {
         stop();
         dispatchEvent(new TimelineEvent(TimelineEvent.TWEEN_COMPLETE,true));
      }
      
      function frame52() : *
      {
         stop();
         dispatchEvent(new TimelineEvent(TimelineEvent.TWEEN_COMPLETE,false));
      }
      
      function frame96() : *
      {
         stop();
      }
      
      function frame98() : *
      {
         stop();
      }
   }
}
