package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1421:String;
      
      private var var_1989:int;
      
      private var var_1992:int;
      
      private var var_1990:int;
      
      private var var_1991:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1989 = param1.readInteger();
         var_1990 = param1.readInteger();
         var_1992 = param1.readInteger();
         var_1991 = param1.readString();
         var_1421 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1421;
      }
      
      public function get hour() : int
      {
         return var_1989;
      }
      
      public function get minute() : int
      {
         return var_1990;
      }
      
      public function get chatterName() : String
      {
         return var_1991;
      }
      
      public function get chatterId() : int
      {
         return var_1992;
      }
   }
}
