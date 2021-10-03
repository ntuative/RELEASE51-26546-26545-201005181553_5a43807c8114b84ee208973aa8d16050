package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2021:Array;
      
      private var var_2020:String;
      
      private var var_2022:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2020 = param1;
         var_2021 = param2;
         var_2022 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2020;
      }
      
      public function get yieldList() : Array
      {
         return var_2021;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2022;
      }
   }
}
