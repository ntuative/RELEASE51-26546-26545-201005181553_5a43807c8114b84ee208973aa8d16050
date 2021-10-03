package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_127:String = "RSPE_VOTE_RESULT";
      
      public static const const_137:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1381:int = 0;
      
      private var var_1072:String = "";
      
      private var var_667:Array;
      
      private var var_1090:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1090 = [];
         var_667 = [];
         super(param1,param2,param7,param8);
         var_1072 = param3;
         var_1090 = param4;
         var_667 = param5;
         if(var_667 == null)
         {
            var_667 = [];
         }
         var_1381 = param6;
      }
      
      public function get votes() : Array
      {
         return var_667.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1381;
      }
      
      public function get question() : String
      {
         return var_1072;
      }
      
      public function get choices() : Array
      {
         return var_1090.slice();
      }
   }
}
