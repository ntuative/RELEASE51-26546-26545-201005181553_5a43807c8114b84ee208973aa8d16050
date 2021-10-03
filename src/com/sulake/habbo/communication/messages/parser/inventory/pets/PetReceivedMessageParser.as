package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1125:PetData;
      
      private var var_1627:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1627 = param1.readBoolean();
         var_1125 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1627 + ", " + var_1125.id + ", " + var_1125.name + ", " + pet.figure + ", " + var_1125.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1627;
      }
      
      public function get pet() : PetData
      {
         return var_1125;
      }
   }
}
