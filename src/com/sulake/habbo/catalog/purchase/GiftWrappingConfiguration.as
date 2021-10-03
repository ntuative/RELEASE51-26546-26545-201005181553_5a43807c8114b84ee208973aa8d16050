package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_592:Array;
      
      private var var_1178:int;
      
      private var var_1456:Array;
      
      private var var_593:Array;
      
      private var var_1291:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1291 = _loc2_.isWrappingEnabled;
         var_1178 = _loc2_.wrappingPrice;
         var_1456 = _loc2_.stuffTypes;
         var_593 = _loc2_.boxTypes;
         var_592 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_592;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1456;
      }
      
      public function get price() : int
      {
         return var_1178;
      }
      
      public function get boxTypes() : Array
      {
         return var_593;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1291;
      }
   }
}
