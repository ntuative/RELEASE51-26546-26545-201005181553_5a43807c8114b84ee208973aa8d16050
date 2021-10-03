package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2137:int;
      
      private var var_1589:int;
      
      private var var_2135:int;
      
      private var var_2139:int;
      
      private var var_2138:int;
      
      private var var_1588:int;
      
      private var var_2136:int;
      
      private var var_1291:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2137;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1589;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2136;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2139;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2138;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1588;
      }
      
      public function get commission() : int
      {
         return var_2135;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1291 = param1.readBoolean();
         var_2135 = param1.readInteger();
         var_1589 = param1.readInteger();
         var_1588 = param1.readInteger();
         var_2139 = param1.readInteger();
         var_2137 = param1.readInteger();
         var_2138 = param1.readInteger();
         var_2136 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1291;
      }
   }
}
