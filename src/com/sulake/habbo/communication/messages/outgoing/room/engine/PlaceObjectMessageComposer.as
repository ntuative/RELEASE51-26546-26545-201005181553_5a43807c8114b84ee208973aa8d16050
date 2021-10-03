package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_154:int;
      
      private var var_242:int = 0;
      
      private var _roomId:int;
      
      private var var_84:int = 0;
      
      private var _y:int = 0;
      
      private var var_1764:int;
      
      private var var_2280:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_154 = param1;
         var_1764 = param2;
         var_2280 = param3;
         var_84 = param4;
         _y = param5;
         var_242 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1764)
         {
            case RoomObjectCategoryEnum.const_34:
               return [var_154 + " " + var_84 + " " + _y + " " + var_242];
            case RoomObjectCategoryEnum.const_32:
               return [var_154 + " " + var_2280];
            default:
               return [];
         }
      }
   }
}
