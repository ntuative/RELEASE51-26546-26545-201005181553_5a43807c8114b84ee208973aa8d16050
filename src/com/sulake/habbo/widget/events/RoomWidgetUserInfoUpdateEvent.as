package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_211:String = "RWUIUE_PEER";
      
      public static const const_206:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1393:String = "BOT";
      
      public static const const_1039:int = 2;
      
      public static const const_1184:int = 0;
      
      public static const const_984:int = 3;
       
      
      private var var_299:String = "";
      
      private var var_1312:String = "";
      
      private var var_1812:Boolean = false;
      
      private var var_1682:int = 0;
      
      private var var_1809:int = 0;
      
      private var var_1818:Boolean = false;
      
      private var var_1313:String = "";
      
      private var var_1810:Boolean = false;
      
      private var var_809:int = 0;
      
      private var var_1815:Boolean = true;
      
      private var var_1051:int = 0;
      
      private var var_1808:Boolean = false;
      
      private var var_1373:Boolean = false;
      
      private var var_1816:Boolean = false;
      
      private var var_1817:int = 0;
      
      private var var_1813:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_251:Array;
      
      private var var_1376:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1685:int = 0;
      
      private var var_1819:Boolean = false;
      
      private var var_1814:int = 0;
      
      private var var_1811:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_251 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1809;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1809 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1812;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1815;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1815 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1810 = param1;
      }
      
      public function get motto() : String
      {
         return var_1312;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1808 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1373;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1312 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1819;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1811;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1373 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1813;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function get badges() : Array
      {
         return var_251;
      }
      
      public function get amIController() : Boolean
      {
         return var_1818;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1818 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1819 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1814 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1811 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1313 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1810;
      }
      
      public function set figure(param1:String) : void
      {
         var_299 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1817;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1376;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1808;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_809 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1814;
      }
      
      public function get realName() : String
      {
         return var_1313;
      }
      
      public function get figure() : String
      {
         return var_299;
      }
      
      public function set webID(param1:int) : void
      {
         var_1685 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_251 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1816 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1813 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_809;
      }
      
      public function get webID() : int
      {
         return var_1685;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1051 = param1;
      }
      
      public function get xp() : int
      {
         return var_1682;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1812 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1051;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1816;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1376 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1682 = param1;
      }
   }
}
