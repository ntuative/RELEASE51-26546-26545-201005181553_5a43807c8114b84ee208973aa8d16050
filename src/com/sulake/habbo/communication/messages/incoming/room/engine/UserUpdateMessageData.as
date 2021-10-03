package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      private var var_242:int = 0;
      
      private var var_1921:int = 0;
      
      private var var_2245:Number = 0;
      
      private var var_2244:Number = 0;
      
      private var var_2243:Number = 0;
      
      private var var_2246:Number = 0;
      
      private var var_2247:Boolean = false;
      
      private var var_84:Number = 0;
      
      private var _id:int = 0;
      
      private var var_193:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_193 = [];
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_85 = param4;
         var_2246 = param5;
         var_242 = param6;
         var_1921 = param7;
         var_2245 = param8;
         var_2244 = param9;
         var_2243 = param10;
         var_2247 = param11;
         var_193 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get dir() : int
      {
         return var_242;
      }
      
      public function get localZ() : Number
      {
         return var_2246;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2247;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1921;
      }
      
      public function get targetX() : Number
      {
         return var_2245;
      }
      
      public function get targetY() : Number
      {
         return var_2244;
      }
      
      public function get targetZ() : Number
      {
         return var_2243;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get actions() : Array
      {
         return var_193.slice();
      }
   }
}
