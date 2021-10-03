package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_681:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_623:String;
      
      private var var_299:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_681,param4,param5);
         _userId = param1;
         var_299 = param2;
         var_623 = param3;
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
