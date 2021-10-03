package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1001:String;
      
      private var var_2197:int;
      
      private var var_2199:int;
      
      private var var_1582:int;
      
      private var var_2196:int;
      
      private var _category:int;
      
      private var var_2425:int;
      
      private var var_2198:int;
      
      private var var_2200:int;
      
      private var var_2193:int;
      
      private var var_2194:int;
      
      private var var_2195:Boolean;
      
      private var var_1413:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_2197 = param1;
         var_1001 = param2;
         var_2199 = param3;
         var_2193 = param4;
         _category = param5;
         var_1413 = param6;
         var_1582 = param7;
         var_2200 = param8;
         var_2198 = param9;
         var_2194 = param10;
         var_2196 = param11;
         var_2195 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2193;
      }
      
      public function get extra() : int
      {
         return var_1582;
      }
      
      public function get stuffData() : String
      {
         return var_1413;
      }
      
      public function get groupable() : Boolean
      {
         return var_2195;
      }
      
      public function get creationMonth() : int
      {
         return var_2194;
      }
      
      public function get roomItemID() : int
      {
         return var_2199;
      }
      
      public function get itemType() : String
      {
         return var_1001;
      }
      
      public function get itemID() : int
      {
         return var_2197;
      }
      
      public function get songID() : int
      {
         return var_1582;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2200;
      }
      
      public function get creationYear() : int
      {
         return var_2196;
      }
      
      public function get creationDay() : int
      {
         return var_2198;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
