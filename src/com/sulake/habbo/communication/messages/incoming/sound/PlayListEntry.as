package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2212:int;
      
      private var var_2211:int = 0;
      
      private var var_2214:String;
      
      private var var_2215:int;
      
      private var var_2213:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2212 = param1;
         var_2215 = param2;
         var_2213 = param3;
         var_2214 = param4;
      }
      
      public function get length() : int
      {
         return var_2215;
      }
      
      public function get name() : String
      {
         return var_2213;
      }
      
      public function get creator() : String
      {
         return var_2214;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2211;
      }
      
      public function get id() : int
      {
         return var_2212;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2211 = param1;
      }
   }
}
