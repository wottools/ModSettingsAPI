package net.wg.data.constants
{
   import net.wg.data.constants.generated.ICON_TEXT_FRAMES;
   
   public class IconsTypes extends Object
   {
      
      public function IconsTypes()
      {
         super();
      }
      
      public static const EMPTY:String = ICON_TEXT_FRAMES.EMPTY;
      
      public static const CREDITS:String = ICON_TEXT_FRAMES.CREDITS;
      
      public static const GOLD:String = ICON_TEXT_FRAMES.GOLD;
      
      public static const GOLD_DISCOUNT:String = ICON_TEXT_FRAMES.GOLD_DISCOUNT;
      
      public static const XP:String = ICON_TEXT_FRAMES.XP;
      
      public static const ELITE_XP:String = ICON_TEXT_FRAMES.ELITE_XP;
      
      public static const ELITE:String = ICON_TEXT_FRAMES.ELITE;
      
      public static const ARROW_DOWN:String = ICON_TEXT_FRAMES.ARROW_DOWN;
      
      public static const ARROW_UP:String = ICON_TEXT_FRAMES.ARROW_UP;
      
      public static const ARROW_DOWN_DISABLED:String = ICON_TEXT_FRAMES.ARROW_DOWN_DISABLED;
      
      public static const ELITE_TANK_XP:String = ICON_TEXT_FRAMES.ELITE_TANK_XP;
      
      public static const FREE_XP:String = ICON_TEXT_FRAMES.FREE_XP;
      
      public static const TANK_DAILYXPFACTOR:String = ICON_TEXT_FRAMES.TANK_DAILYXPFACTOR;
      
      public static const TANK_UNLOCK_PRICE:String = ICON_TEXT_FRAMES.TANK_UNLOCK_PRICE;
      
      public static const DOUBLE_XP_FACTOR:String = ICON_TEXT_FRAMES.DOUBLE_XP_FACTOR;
      
      public static const ACTION_XP_FACTOR:String = ICON_TEXT_FRAMES.ACTION_XP_FACTOR;
      
      public static const VCOIN:String = ICON_TEXT_FRAMES.VCOIN;
      
      public static const CLASS1:String = ICON_TEXT_FRAMES.CLASS1;
      
      public static const CLASS2:String = ICON_TEXT_FRAMES.CLASS2;
      
      public static const CLASS3:String = ICON_TEXT_FRAMES.CLASS3;
      
      public static const CLASS4:String = ICON_TEXT_FRAMES.CLASS4;
      
      public static const XP_PRICE:String = ICON_TEXT_FRAMES.XP_PRICE;
      
      public static const DEFRES:String = ICON_TEXT_FRAMES.DEFRES;
      
      public static const RENTALS:String = ICON_TEXT_FRAMES.RENTALS;
      
      public static const REWARD_SHEET:String = ICON_TEXT_FRAMES.REWARD_SHEET;
      
      public static const ALLOW_ICONS:Array = [EMPTY,CREDITS,GOLD,GOLD_DISCOUNT,XP,ELITE_XP,ELITE,ARROW_DOWN,ARROW_UP,ARROW_DOWN_DISABLED,ELITE_TANK_XP,FREE_XP,TANK_DAILYXPFACTOR,TANK_UNLOCK_PRICE,DOUBLE_XP_FACTOR,ACTION_XP_FACTOR,VCOIN,CLASS1,CLASS2,CLASS3,CLASS4,XP_PRICE,DEFRES,RENTALS,REWARD_SHEET];
      
      public static function getTextColor(param1:String) : Number
      {
         var _loc2_:Number = -1;
         switch(param1)
         {
            case CREDITS:
               _loc2_ = 13556185;
               break;
            case GOLD:
               _loc2_ = 16761699;
               break;
            case FREE_XP:
               _loc2_ = 13224374;
               break;
         }
         return _loc2_;
      }
   }
}
