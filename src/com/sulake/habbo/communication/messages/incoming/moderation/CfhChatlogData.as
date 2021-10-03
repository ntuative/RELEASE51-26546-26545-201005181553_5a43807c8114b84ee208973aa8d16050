package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2146:int;
      
      private var var_1064:int;
      
      private var var_2281:int;
      
      private var var_1619:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1619 = param1.readInteger();
         var_2281 = param1.readInteger();
         var_1064 = param1.readInteger();
         var_2146 = param1.readInteger();
         var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1619);
      }
      
      public function get chatRecordId() : int
      {
         return var_2146;
      }
      
      public function get reportedUserId() : int
      {
         return var_1064;
      }
      
      public function get callerUserId() : int
      {
         return var_2281;
      }
      
      public function get callId() : int
      {
         return var_1619;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_115;
      }
   }
}
