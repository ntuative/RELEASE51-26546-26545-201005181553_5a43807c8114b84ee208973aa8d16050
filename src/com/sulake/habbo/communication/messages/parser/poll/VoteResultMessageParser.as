package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1381:int;
      
      private var var_1072:String;
      
      private var var_667:Array;
      
      private var var_1090:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_667.slice();
      }
      
      public function flush() : Boolean
      {
         var_1072 = "";
         var_1090 = [];
         var_667 = [];
         var_1381 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1381;
      }
      
      public function get question() : String
      {
         return var_1072;
      }
      
      public function get choices() : Array
      {
         return var_1090.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1072 = param1.readString();
         var_1090 = [];
         var_667 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1090.push(param1.readString());
            var_667.push(param1.readInteger());
            _loc3_++;
         }
         var_1381 = param1.readInteger();
         return true;
      }
   }
}
