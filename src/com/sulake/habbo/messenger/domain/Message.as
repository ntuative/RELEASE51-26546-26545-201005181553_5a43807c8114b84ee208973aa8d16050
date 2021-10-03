package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_714:int = 2;
      
      public static const const_897:int = 6;
      
      public static const const_541:int = 1;
      
      public static const const_576:int = 3;
      
      public static const const_937:int = 4;
      
      public static const const_591:int = 5;
       
      
      private var var_2153:String;
      
      private var var_1101:int;
      
      private var var_2057:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1101 = param2;
         var_2057 = param3;
         var_2153 = param4;
      }
      
      public function get time() : String
      {
         return var_2153;
      }
      
      public function get senderId() : int
      {
         return var_1101;
      }
      
      public function get messageText() : String
      {
         return var_2057;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
