package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2102:String;
      
      private var var_299:String;
      
      private var var_623:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_299 = param1;
         var_623 = param2;
         var_2102 = param3;
      }
      
      public function get race() : String
      {
         return var_2102;
      }
      
      public function get figure() : String
      {
         return var_299;
      }
      
      public function get gender() : String
      {
         return var_623;
      }
   }
}
