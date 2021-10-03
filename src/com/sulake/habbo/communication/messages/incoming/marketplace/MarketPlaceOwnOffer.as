package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1478:int = 2;
      
      public static const const_1584:int = 1;
      
      public static const const_1506:int = 0;
       
      
      private var var_1178:int;
      
      private var var_169:int;
      
      private var var_2412:int;
      
      private var _offerId:int;
      
      private var var_1745:int;
      
      private var var_1744:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1744 = param2;
         var_1745 = param3;
         var_1178 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1744;
      }
      
      public function get furniType() : int
      {
         return var_1745;
      }
      
      public function get price() : int
      {
         return var_1178;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
