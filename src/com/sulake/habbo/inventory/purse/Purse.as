package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2045:Boolean = false;
      
      private var var_2046:int = 0;
      
      private var var_1571:int = 0;
      
      private var var_2044:int = 0;
      
      private var var_2047:Boolean = false;
      
      private var var_1453:int = 0;
      
      private var var_1572:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1453 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2046;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2045;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2045 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2047;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2046 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1571 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1453;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2047 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2044 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1571;
      }
      
      public function get pixelBalance() : int
      {
         return var_2044;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1572 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1572;
      }
   }
}
