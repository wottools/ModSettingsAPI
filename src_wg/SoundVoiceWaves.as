package
{
   import net.wg.gui.lobby.settings.components.SoundVoiceWaves;
   
   public dynamic class SoundVoiceWaves extends net.wg.gui.lobby.settings.components.SoundVoiceWaves
   {
      
      public function SoundVoiceWaves()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
