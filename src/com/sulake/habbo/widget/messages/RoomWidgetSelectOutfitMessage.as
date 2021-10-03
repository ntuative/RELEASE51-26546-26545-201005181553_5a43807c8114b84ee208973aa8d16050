package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_863:String = "select_outfit";
       
      
      private var var_2074:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_863);
         var_2074 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2074;
      }
   }
}
