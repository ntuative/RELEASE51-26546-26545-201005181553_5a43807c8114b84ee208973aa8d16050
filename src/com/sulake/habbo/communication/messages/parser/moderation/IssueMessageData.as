package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_155:int = 1;
      
      public static const const_1412:int = 3;
      
      public static const const_469:int = 2;
       
      
      private var var_2140:int;
      
      private var var_1823:int;
      
      private var var_2142:int;
      
      private var var_1697:int;
      
      private var var_35:int;
      
      private var var_421:int;
      
      private var var_1255:int;
      
      private var var_1660:int;
      
      private var var_1064:int;
      
      private var _roomResources:String;
      
      private var var_2146:int;
      
      private var var_2145:int;
      
      private var var_2144:String;
      
      private var var_2143:String;
      
      private var var_2147:int = 0;
      
      private var var_1287:String;
      
      private var _message:String;
      
      private var var_2073:int;
      
      private var var_2141:String;
      
      private var var_1229:int;
      
      private var var_705:String;
      
      private var var_2148:String;
      
      private var var_1519:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1064 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2147 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2145;
      }
      
      public function set roomName(param1:String) : void
      {
         var_705 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2146 = param1;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_705;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1697 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_35 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1823;
      }
      
      public function get priority() : int
      {
         return var_2140 + var_2147;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2143;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1519) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1229;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2145 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1255;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2144 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2146;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1697;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2148 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1287 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1660;
      }
      
      public function set priority(param1:int) : void
      {
         var_2140 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1823 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2144;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2142 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2143 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2073 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1287;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1255 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2142;
      }
      
      public function set flatId(param1:int) : void
      {
         var_421 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1229 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1519 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2073;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2141 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1519;
      }
      
      public function get reportedUserId() : int
      {
         return var_1064;
      }
      
      public function get flatId() : int
      {
         return var_421;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2148;
      }
      
      public function get reporterUserName() : String
      {
         return var_2141;
      }
   }
}
