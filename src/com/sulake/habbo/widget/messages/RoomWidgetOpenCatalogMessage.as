package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_995:String = "RWOCM_CLUB_MAIN";
      
      public static const const_599:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2004:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_599);
         var_2004 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2004;
      }
   }
}
