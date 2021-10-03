package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1001:int;
      
      private var var_1167:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1001 = param1;
         var_1167 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1001;
      }
      
      public function get itemName() : String
      {
         return var_1167;
      }
   }
}
