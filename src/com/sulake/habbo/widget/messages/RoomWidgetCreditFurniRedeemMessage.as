package com.sulake.habbo.widget.messages
{
   public class RoomWidgetCreditFurniRedeemMessage extends RoomWidgetMessage
   {
      
      public static const const_741:String = "RWFCRM_REDEEM";
       
      
      private var var_154:int;
      
      public function RoomWidgetCreditFurniRedeemMessage(param1:String, param2:int)
      {
         super(param1);
         var_154 = param2;
      }
      
      public function get objectId() : int
      {
         return var_154;
      }
   }
}
