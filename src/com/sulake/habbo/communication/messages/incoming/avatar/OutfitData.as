package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1676:String;
      
      private var var_623:String;
      
      private var var_1540:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1540 = param1.readInteger();
         var_1676 = param1.readString();
         var_623 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_623;
      }
      
      public function get figureString() : String
      {
         return var_1676;
      }
      
      public function get slotId() : int
      {
         return var_1540;
      }
   }
}
