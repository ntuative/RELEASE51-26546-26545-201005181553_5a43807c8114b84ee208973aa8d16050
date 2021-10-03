package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1178:int;
      
      private var var_1746:int = -1;
      
      private var var_169:int;
      
      private var var_1743:int;
      
      private var var_1745:int;
      
      private var _offerId:int;
      
      private var var_1179:int;
      
      private var var_1744:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1744 = param2;
         var_1745 = param3;
         var_1178 = param4;
         var_169 = param5;
         var_1746 = param6;
         var_1743 = param7;
         var_1179 = param8;
      }
      
      public function get status() : int
      {
         return var_169;
      }
      
      public function get price() : int
      {
         return var_1178;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1746;
      }
      
      public function get offerCount() : int
      {
         return var_1179;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1745;
      }
      
      public function get averagePrice() : int
      {
         return var_1743;
      }
      
      public function get furniId() : int
      {
         return var_1744;
      }
   }
}
