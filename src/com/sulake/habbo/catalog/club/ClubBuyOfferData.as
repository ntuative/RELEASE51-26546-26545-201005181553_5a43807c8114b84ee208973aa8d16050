package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1962:int;
      
      private var var_1966:Boolean = false;
      
      private var var_1969:int;
      
      private var var_1968:int;
      
      private var var_1967:int;
      
      private var var_1370:String;
      
      private var var_1178:int;
      
      private var _offerId:int;
      
      private var var_1963:int;
      
      private var var_1964:Boolean;
      
      private var var_1965:Boolean;
      
      private var var_405:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1370 = param2;
         var_1178 = param3;
         var_1965 = param4;
         var_1964 = param5;
         var_1969 = param6;
         var_1967 = param7;
         var_1968 = param8;
         var_1962 = param9;
         var_1963 = param10;
      }
      
      public function get month() : int
      {
         return var_1962;
      }
      
      public function get page() : ICatalogPage
      {
         return var_405;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1964;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_405 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_355;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1965;
      }
      
      public function get localizationId() : String
      {
         return var_1370;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1967;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1966;
      }
      
      public function get day() : int
      {
         return var_1963;
      }
      
      public function get year() : int
      {
         return var_1968;
      }
      
      public function get price() : int
      {
         return var_1178;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1966 = param1;
      }
      
      public function get periods() : int
      {
         return var_1969;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1178;
      }
      
      public function get productCode() : String
      {
         return var_1370;
      }
   }
}
