package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1402:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1198:int;
      
      private var var_1001:String;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1001 = param2;
         var_1198 = param3;
      }
      
      public function get classId() : int
      {
         return var_1198;
      }
      
      public function get itemType() : String
      {
         return var_1001;
      }
   }
}
