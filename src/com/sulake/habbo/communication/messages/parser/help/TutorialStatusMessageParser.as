package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_975:Boolean;
      
      private var var_977:Boolean;
      
      private var var_976:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_975;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_977;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_976 = param1.readBoolean();
         var_977 = param1.readBoolean();
         var_975 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_976;
      }
      
      public function flush() : Boolean
      {
         var_976 = false;
         var_977 = false;
         var_975 = false;
         return true;
      }
   }
}
