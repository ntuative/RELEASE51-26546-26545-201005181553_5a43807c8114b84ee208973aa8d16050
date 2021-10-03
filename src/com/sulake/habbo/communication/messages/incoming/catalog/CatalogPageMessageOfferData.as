package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_828:Array;
      
      private var var_791:int;
      
      private var var_1142:String;
      
      private var _offerId:int;
      
      private var var_792:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1142 = param1.readString();
         var_791 = param1.readInteger();
         var_792 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_828 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_828.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_828;
      }
      
      public function get priceInCredits() : int
      {
         return var_791;
      }
      
      public function get localizationId() : String
      {
         return var_1142;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_792;
      }
   }
}
