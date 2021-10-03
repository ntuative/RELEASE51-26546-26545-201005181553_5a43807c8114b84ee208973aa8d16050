package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1712:int;
      
      private var var_1163:PetData;
      
      private var var_1711:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1712;
      }
      
      public function get petData() : PetData
      {
         return var_1163;
      }
      
      public function flush() : Boolean
      {
         var_1163 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1711;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1712 = param1.readInteger();
         var_1711 = param1.readInteger();
         var_1163 = new PetData(param1);
         return true;
      }
   }
}
