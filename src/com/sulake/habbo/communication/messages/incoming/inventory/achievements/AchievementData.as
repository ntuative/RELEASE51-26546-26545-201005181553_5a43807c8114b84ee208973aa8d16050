package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   public class AchievementData
   {
       
      
      private var var_1659:int;
      
      private var _type:int;
      
      private var var_669:String;
      
      public function AchievementData()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1659;
      }
      
      public function set level(param1:int) : void
      {
         var_1659 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set badgeId(param1:String) : void
      {
         var_669 = param1;
      }
      
      public function get badgeId() : String
      {
         return var_669;
      }
   }
}
