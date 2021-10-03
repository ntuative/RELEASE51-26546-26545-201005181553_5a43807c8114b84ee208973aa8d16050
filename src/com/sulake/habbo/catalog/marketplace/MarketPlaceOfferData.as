package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1742:int;
      
      private var var_1178:int;
      
      private var var_1743:int;
      
      private var var_1746:int = -1;
      
      private var var_169:int;
      
      private var var_1745:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1179:int;
      
      private var var_1744:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1744 = param2;
         var_1745 = param3;
         var_1178 = param4;
         var_169 = param5;
         var_1743 = param6;
         var_1179 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1742 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1742;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1746 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1178 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1179 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_169;
      }
      
      public function get averagePrice() : int
      {
         return var_1743;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1744;
      }
   }
}
