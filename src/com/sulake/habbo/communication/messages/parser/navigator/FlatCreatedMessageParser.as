package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_1640:String;
      
      private var var_421:int;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function get flatName() : String
      {
         return var_1640;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_421 = param1.readInteger();
         this.var_1640 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_421 + ", " + this.var_1640);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get flatId() : int
      {
         return var_421;
      }
   }
}
