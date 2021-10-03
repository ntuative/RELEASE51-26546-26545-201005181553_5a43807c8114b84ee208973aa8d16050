package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_871:String = "price_type_none";
      
      public static const const_453:String = "pricing_model_multi";
      
      public static const const_355:String = "price_type_credits";
      
      public static const const_444:String = "price_type_credits_and_pixels";
      
      public static const const_464:String = "pricing_model_bundle";
      
      public static const const_491:String = "pricing_model_single";
      
      public static const const_585:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1177:String = "pricing_model_unknown";
      
      public static const const_477:String = "price_type_pixels";
       
      
      private var var_1641:int;
      
      private var var_791:int;
      
      private var _offerId:int;
      
      private var var_792:int;
      
      private var var_389:String;
      
      private var var_565:String;
      
      private var var_405:ICatalogPage;
      
      private var var_390:IProductContainer;
      
      private var var_1142:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1142 = param1.localizationId;
         var_791 = param1.priceInCredits;
         var_792 = param1.priceInPixels;
         var_405 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_389;
      }
      
      public function get page() : ICatalogPage
      {
         return var_405;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1641 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_390;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_792;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1142 = "";
         var_791 = 0;
         var_792 = 0;
         var_405 = null;
         if(var_390 != null)
         {
            var_390.dispose();
            var_390 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1641;
      }
      
      public function get priceInCredits() : int
      {
         return var_791;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_389 = const_491;
            }
            else
            {
               var_389 = const_453;
            }
         }
         else if(param1.length > 1)
         {
            var_389 = const_464;
         }
         else
         {
            var_389 = const_1177;
         }
      }
      
      public function get priceType() : String
      {
         return var_565;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_389)
         {
            case const_491:
               var_390 = new SingleProductContainer(this,param1);
               break;
            case const_453:
               var_390 = new MultiProductContainer(this,param1);
               break;
            case const_464:
               var_390 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_389);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1142;
      }
      
      private function analyzePriceType() : void
      {
         if(var_791 > 0 && var_792 > 0)
         {
            var_565 = const_444;
         }
         else if(var_791 > 0)
         {
            var_565 = const_355;
         }
         else if(var_792 > 0)
         {
            var_565 = const_477;
         }
         else
         {
            var_565 = const_871;
         }
      }
   }
}
