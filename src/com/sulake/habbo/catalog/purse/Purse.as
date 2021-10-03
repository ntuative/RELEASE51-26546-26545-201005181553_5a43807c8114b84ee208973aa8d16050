package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2158:int = 0;
      
      private var var_1571:int = 0;
      
      private var var_2047:Boolean = false;
      
      private var var_1859:int = 0;
      
      private var var_2157:int = 0;
      
      private var var_1572:int = 0;
      
      private var var_2159:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1571;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1571 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2047 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2159 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1571 > 0 || var_1572 > 0;
      }
      
      public function get credits() : int
      {
         return var_1859;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2157 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1572;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2047;
      }
      
      public function get pastClubDays() : int
      {
         return var_2159;
      }
      
      public function get pastVipDays() : int
      {
         return var_2157;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2158 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2158;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1572 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1859 = param1;
      }
   }
}
