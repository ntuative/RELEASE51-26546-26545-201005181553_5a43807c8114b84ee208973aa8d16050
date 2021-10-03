package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1962:int;
      
      private var var_1178:int;
      
      private var var_1969:int;
      
      private var _offerId:int;
      
      private var var_1968:int;
      
      private var var_1963:int;
      
      private var var_1964:Boolean;
      
      private var var_1967:int;
      
      private var var_1965:Boolean;
      
      private var var_1370:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1370 = param1.readString();
         var_1178 = param1.readInteger();
         var_1965 = param1.readBoolean();
         var_1964 = param1.readBoolean();
         var_1969 = param1.readInteger();
         var_1967 = param1.readInteger();
         var_1968 = param1.readInteger();
         var_1962 = param1.readInteger();
         var_1963 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1968;
      }
      
      public function get month() : int
      {
         return var_1962;
      }
      
      public function get price() : int
      {
         return var_1178;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1969;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1967;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1965;
      }
      
      public function get day() : int
      {
         return var_1963;
      }
      
      public function get vip() : Boolean
      {
         return var_1964;
      }
      
      public function get productCode() : String
      {
         return var_1370;
      }
   }
}
