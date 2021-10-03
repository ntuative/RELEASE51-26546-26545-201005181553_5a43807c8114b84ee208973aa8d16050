package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1413:String;
      
      private var var_1001:String;
      
      private var var_2192:Boolean;
      
      private var var_1582:int;
      
      private var var_2188:int;
      
      private var var_2189:Boolean;
      
      private var var_1540:String = "";
      
      private var var_2190:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1198:int;
      
      private var var_2191:Boolean;
      
      private var var_2212:int = -1;
      
      private var var_1897:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_2188 = param1;
         var_1001 = param2;
         _objId = param3;
         var_1198 = param4;
         _category = param5;
         var_1413 = param6;
         var_2192 = param7;
         var_2190 = param8;
         var_2191 = param9;
         var_2189 = param10;
         var_1897 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1540;
      }
      
      public function get extra() : int
      {
         return var_1582;
      }
      
      public function get classId() : int
      {
         return var_1198;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2189;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2192;
      }
      
      public function get stripId() : int
      {
         return var_2188;
      }
      
      public function get stuffData() : String
      {
         return var_1413;
      }
      
      public function get songId() : int
      {
         return var_2212;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1540 = param1;
         var_1582 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1001;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1897;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2191;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2190;
      }
   }
}
