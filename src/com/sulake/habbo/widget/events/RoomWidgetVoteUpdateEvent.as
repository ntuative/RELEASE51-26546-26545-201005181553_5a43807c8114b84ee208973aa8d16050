package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_127:String = "RWPUE_VOTE_RESULT";
      
      public static const const_137:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1381:int;
      
      private var var_1072:String;
      
      private var var_667:Array;
      
      private var var_1090:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1072 = param2;
         var_1090 = param3;
         var_667 = param4;
         if(var_667 == null)
         {
            var_667 = [];
         }
         var_1381 = param5;
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
