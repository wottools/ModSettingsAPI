package
{
   import net.wg.gui.components.common.markers.HealthBarAnimatedPart;
   import net.wg.gui.events.TimelineEvent;
   
   public dynamic class HitSplash extends HealthBarAnimatedPart
   {
      
      public function HitSplash()
      {
         super();
         addFrameScript(9,this.frame10,54,this.frame55);
      }
      
      function frame10() : *
      {
         stop();
         dispatchEvent(new TimelineEvent(TimelineEvent.TWEEN_COMPLETE,true));
      }
      
      function frame55() : *
      {
         stop();
         dispatchEvent(new TimelineEvent(TimelineEvent.TWEEN_COMPLETE,false));
      }
   }
}
