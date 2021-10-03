package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1688:int = 9;
      
      public static const const_1620:int = 4;
      
      public static const const_1624:int = 1;
      
      public static const const_1186:int = 10;
      
      public static const const_1557:int = 2;
      
      public static const const_1216:int = 7;
      
      public static const const_1343:int = 11;
      
      public static const const_1541:int = 3;
      
      public static const const_1328:int = 8;
      
      public static const const_1234:int = 5;
      
      public static const const_1495:int = 6;
      
      public static const const_1430:int = 12;
       
      
      private var var_2001:String;
      
      private var _roomId:int;
      
      private var var_1180:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2001;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1180 = param1.readInteger();
         var_2001 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1180;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
