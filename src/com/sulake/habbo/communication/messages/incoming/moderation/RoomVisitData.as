package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_705:String;
      
      private var var_1699:int;
      
      private var var_1521:Boolean;
      
      private var _roomId:int;
      
      private var var_1698:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1521 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_705 = param1.readString();
         var_1698 = param1.readInteger();
         var_1699 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1521;
      }
      
      public function get roomName() : String
      {
         return var_705;
      }
      
      public function get enterMinute() : int
      {
         return var_1699;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1698;
      }
   }
}
