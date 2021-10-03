package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1694:int;
      
      private var var_420:Boolean;
      
      private var var_1695:Boolean;
      
      private var var_808:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1695 = param1.readBoolean();
         if(var_1695)
         {
            var_1694 = param1.readInteger();
            var_420 = param1.readBoolean();
         }
         else
         {
            var_808 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_808 != null)
         {
            var_808.dispose();
            var_808 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1694;
      }
      
      public function get owner() : Boolean
      {
         return var_420;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1695;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_808;
      }
   }
}
