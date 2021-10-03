package com.sulake.habbo.widget.events
{
   public class RoomWidgetClothingChangeUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_351:String = "RWCCUE_SHOW_GENDER_SELECTION";
      
      public static const const_936:String = "RWCCUE_SHOW_CLOTHING_EDITOR";
      
      public static const const_344:String = "RWCCUE_HIDE_CLOTHING_EDITOR";
       
      
      private var _roomId:int = -1;
      
      private var var_154:int = -1;
      
      private var var_1764:int = -1;
      
      private var _roomCategory:int = -1;
      
      public function RoomWidgetClothingChangeUpdateEvent(param1:String, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_154 = param2;
         var_1764 = param3;
         _roomId = param4;
         _roomCategory = param5;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get objectId() : int
      {
         return var_154;
      }
      
      public function get objectCategory() : int
      {
         return var_1764;
      }
   }
}
