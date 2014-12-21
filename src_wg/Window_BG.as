package
{
   import flash.display.MovieClip;
   
   public dynamic class Window_BG extends MovieClip
   {
      
      public function Window_BG()
      {
         super();
         addFrameScript(9,this.frame10,19,this.frame20);
      }
      
      function frame10() : *
      {
         stop();
      }
      
      function frame20() : *
      {
         stop();
      }
   }
}
