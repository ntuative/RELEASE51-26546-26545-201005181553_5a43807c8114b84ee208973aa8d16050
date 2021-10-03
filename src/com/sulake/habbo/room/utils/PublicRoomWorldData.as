package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1984:Number = 1;
      
      private var var_146:Number = 1;
      
      private var var_1657:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1657 = param1;
         var_146 = param2;
         var_1984 = param3;
      }
      
      public function get scale() : Number
      {
         return var_146;
      }
      
      public function get heightScale() : Number
      {
         return var_1984;
      }
   }
}
