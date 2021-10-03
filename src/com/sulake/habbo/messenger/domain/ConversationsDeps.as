package com.sulake.habbo.messenger.domain
{
   import com.sulake.habbo.messenger.HabboMessenger;
   
   public class ConversationsDeps implements IConversationsDeps
   {
       
      
      private var var_145:HabboMessenger;
      
      public function ConversationsDeps(param1:HabboMessenger)
      {
         super();
         var_145 = param1;
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         var_145.messengerView.addMsgToView(param1,param2);
      }
      
      public function createConversation(param1:int) : Conversation
      {
         return var_145.createConversation(param1);
      }
      
      public function getText(param1:String) : String
      {
         return var_145.getText(param1);
      }
      
      public function getTabCount() : int
      {
         return var_145.messengerView.getTabCount();
      }
      
      public function refresh(param1:Boolean) : void
      {
         var_145.messengerView.refresh(param1);
      }
   }
}
