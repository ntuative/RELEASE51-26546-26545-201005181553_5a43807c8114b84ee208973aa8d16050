package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2188:int;
      
      private var var_2190:Boolean;
      
      private var var_2212:int;
      
      private var var_1413:String;
      
      private var var_2286:Boolean = false;
      
      private var var_1897:int;
      
      private var var_464:int;
      
      private var var_1001:String;
      
      private var var_1540:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1198:int;
      
      private var var_2191:Boolean;
      
      private var var_2287:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_2188 = param1;
         var_1001 = param2;
         _objId = param3;
         var_1198 = param4;
         var_1413 = param5;
         var_2190 = param6;
         var_2191 = param7;
         var_1897 = param8;
         var_1540 = param9;
         var_2212 = param10;
         var_464 = -1;
      }
      
      public function get songId() : int
      {
         return var_2212;
      }
      
      public function get iconCallbackId() : int
      {
         return var_464;
      }
      
      public function get expiryTime() : int
      {
         return var_1897;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2287 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2286 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_464 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2191;
      }
      
      public function get slotId() : String
      {
         return var_1540;
      }
      
      public function get classId() : int
      {
         return var_1198;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2190;
      }
      
      public function get stuffData() : String
      {
         return var_1413;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_2188;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2286;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2287;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1001;
      }
   }
}
