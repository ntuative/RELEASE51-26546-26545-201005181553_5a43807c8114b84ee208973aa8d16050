package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2085:Boolean = false;
      
      private var var_2083:Boolean = false;
      
      private var var_1693:String = "";
      
      private var _type:String = "";
      
      private var var_2084:Boolean = false;
      
      private var var_1758:Number = 0;
      
      private var var_2290:Number = 0;
      
      private var var_2289:Number = 0;
      
      private var var_2288:String = "";
      
      private var var_1762:Number = 0;
      
      private var var_2086:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2288 = param2;
         var_1693 = param3;
         var_2290 = param4;
         var_2289 = param5;
         var_1758 = param6;
         var_1762 = param7;
         var_2086 = param8;
         var_2083 = param9;
         var_2084 = param10;
         var_2085 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2086;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2085;
      }
      
      public function get localX() : Number
      {
         return var_1758;
      }
      
      public function get localY() : Number
      {
         return var_1762;
      }
      
      public function get canvasId() : String
      {
         return var_2288;
      }
      
      public function get altKey() : Boolean
      {
         return var_2083;
      }
      
      public function get spriteTag() : String
      {
         return var_1693;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2290;
      }
      
      public function get screenY() : Number
      {
         return var_2289;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2084;
      }
   }
}
