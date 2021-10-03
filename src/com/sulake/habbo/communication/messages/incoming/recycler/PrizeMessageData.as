package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1613:int;
      
      private var var_2053:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_2053 = param1.readString();
         var_1613 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1613;
      }
      
      public function get productItemType() : String
      {
         return var_2053;
      }
   }
}
