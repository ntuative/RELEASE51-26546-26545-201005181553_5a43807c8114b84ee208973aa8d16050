package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_152:String = "RSUBE_FIGURE";
       
      
      private var var_623:String = "";
      
      private var var_299:String = "";
      
      private var _userId:int = 0;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_152,param1,param5,param6);
         _userId = param2;
         var_299 = param3;
         var_623 = param4;
      }
      
      public function get gender() : String
      {
         return var_623;
      }
      
      public function get figure() : String
      {
         return var_299;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
