package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2030:int;
      
      private var var_2029:int;
      
      private var var_2032:Boolean;
      
      private var var_2028:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2031:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2029 = param1;
         var_2030 = param2;
         var_2028 = param3;
         var_2031 = param4;
         var_2032 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2029,var_2030,var_2028,var_2031,int(var_2032)];
      }
      
      public function dispose() : void
      {
      }
   }
}
