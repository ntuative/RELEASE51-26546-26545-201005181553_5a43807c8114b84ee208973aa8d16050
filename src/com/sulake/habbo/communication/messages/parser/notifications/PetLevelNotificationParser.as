package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_299:String;
      
      private var var_1659:int;
      
      private var var_1901:String;
      
      private var var_983:int;
      
      private var var_1332:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1332;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1332 = param1.readInteger();
         var_1901 = param1.readString();
         var_1659 = param1.readInteger();
         var_299 = param1.readString();
         var_983 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1901;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_299;
      }
      
      public function get petType() : int
      {
         return var_983;
      }
      
      public function get level() : int
      {
         return var_1659;
      }
   }
}
