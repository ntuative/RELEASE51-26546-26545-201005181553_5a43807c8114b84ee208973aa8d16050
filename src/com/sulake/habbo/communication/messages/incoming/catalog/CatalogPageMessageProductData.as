package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_216:String = "e";
      
      public static const const_83:String = "i";
      
      public static const const_82:String = "s";
       
      
      private var var_1115:String;
      
      private var var_1379:String;
      
      private var var_1377:int;
      
      private var var_2240:int;
      
      private var var_1116:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1379 = param1.readString();
         var_2240 = param1.readInteger();
         var_1115 = param1.readString();
         var_1116 = param1.readInteger();
         var_1377 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1116;
      }
      
      public function get productType() : String
      {
         return var_1379;
      }
      
      public function get expiration() : int
      {
         return var_1377;
      }
      
      public function get furniClassId() : int
      {
         return var_2240;
      }
      
      public function get extraParam() : String
      {
         return var_1115;
      }
   }
}
