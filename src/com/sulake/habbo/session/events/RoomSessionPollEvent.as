package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_130:String = "RSPE_POLL_CONTENT";
      
      public static const const_131:String = "RSPE_POLL_OFFER";
      
      public static const const_65:String = "RSPE_POLL_ERROR";
       
      
      private var var_1120:Array = null;
      
      private var var_1383:String = "";
      
      private var var_1259:String;
      
      private var var_1382:String = "";
      
      private var var_1119:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1120;
      }
      
      public function get startMessage() : String
      {
         return var_1383;
      }
      
      public function get summary() : String
      {
         return var_1259;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1383 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1119 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1259 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1119;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1382 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1382;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1120 = param1;
      }
   }
}
