package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1645:int;
      
      private var var_1646:Boolean;
      
      private var _offerId:int;
      
      private var var_1647:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1646 = param1.readBoolean();
         var_1645 = param1.readInteger();
         var_1647 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1647;
      }
      
      public function get monthsRequired() : int
      {
         return var_1645;
      }
      
      public function get isVip() : Boolean
      {
         return var_1646;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
