package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_533:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2030:int;
      
      private var var_2029:int;
      
      private var var_2127:Boolean;
      
      private var var_991:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_533);
         var_2029 = param1;
         var_2030 = param2;
         _color = param3;
         var_991 = param4;
         var_2127 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2030;
      }
      
      public function get presetNumber() : int
      {
         return var_2029;
      }
      
      public function get brightness() : int
      {
         return var_991;
      }
      
      public function get apply() : Boolean
      {
         return var_2127;
      }
   }
}
