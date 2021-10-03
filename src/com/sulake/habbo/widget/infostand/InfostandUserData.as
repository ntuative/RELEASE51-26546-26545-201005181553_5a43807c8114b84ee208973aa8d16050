package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var var_1811:String = "";
      
      private var var_1817:int = 0;
      
      private var _userName:String = "";
      
      private var var_251:Array;
      
      private var _type:String;
      
      private var _userId:int = 0;
      
      private var var_1809:int = 0;
      
      private var var_809:int = 0;
      
      private var var_1051:int = 0;
      
      private var var_474:int = 0;
      
      public function InfostandUserData()
      {
         var_251 = [];
         super();
      }
      
      public function get groupId() : int
      {
         return var_1051;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1809 = param1;
      }
      
      public function isBot() : Boolean
      {
         return type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get userRoomId() : int
      {
         return var_1809;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set userId(param1:int) : void
      {
         _userId = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1817;
      }
      
      public function get petRespectLeft() : int
      {
         return var_474;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1811;
      }
      
      public function set badges(param1:Array) : void
      {
         var_251 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_809 = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_809;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_474 = param1;
      }
      
      public function set userName(param1:String) : void
      {
         _userName = param1;
      }
      
      public function get badges() : Array
      {
         return var_251.slice();
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userId = param1.webID;
         userName = param1.name;
         badges = param1.badges;
         groupId = param1.groupId;
         groupBadgeId = param1.groupBadgeId;
         respectLeft = param1.respectLeft;
         carryItem = param1.carryItem;
         userRoomId = param1.userRoomId;
         type = param1.type;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1051 = param1;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1811 = param1;
      }
   }
}
