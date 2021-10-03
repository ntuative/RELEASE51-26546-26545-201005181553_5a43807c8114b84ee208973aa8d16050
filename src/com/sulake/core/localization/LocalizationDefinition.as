package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1595:String;
      
      private var var_660:String;
      
      private var var_1596:String;
      
      private var var_1597:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1597 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1595 = _loc5_[0];
         var_1596 = _loc5_[1];
         _name = param2;
         var_660 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1595;
      }
      
      public function get method_14() : String
      {
         return var_1597;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_660;
      }
      
      public function get encoding() : String
      {
         return var_1596;
      }
      
      public function get id() : String
      {
         return var_1597 + "_" + var_1595 + "." + var_1596;
      }
   }
}
