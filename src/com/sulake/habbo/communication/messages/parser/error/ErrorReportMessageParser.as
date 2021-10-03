package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1345:int;
      
      private var var_1180:int;
      
      private var var_1346:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1345;
      }
      
      public function flush() : Boolean
      {
         var_1180 = 0;
         var_1345 = 0;
         var_1346 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1180;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1345 = param1.readInteger();
         var_1180 = param1.readInteger();
         var_1346 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1346;
      }
   }
}
