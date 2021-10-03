package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1449:int = 10;
       
      
      private var var_1428:NavigatorSettingsMessageParser;
      
      private var var_1152:int;
      
      private var var_1673:int;
      
      private var var_1675:Boolean;
      
      private var var_986:Array;
      
      private var var_802:Dictionary;
      
      private var var_987:Array;
      
      private var var_2329:int;
      
      private var var_1674:int;
      
      private var var_1670:int;
      
      private var var_1672:int;
      
      private var var_575:PublicRoomShortData;
      
      private var var_399:RoomEventData;
      
      private var var_125:MsgWithRequestId;
      
      private var var_1671:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1669:Boolean;
      
      private var var_194:GuestRoomData;
      
      private var var_670:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_986 = new Array();
         var_987 = new Array();
         var_802 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1673;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1669;
      }
      
      public function startLoading() : void
      {
         this.var_670 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1669 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_399 != null)
         {
            var_399.dispose();
         }
         var_399 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_125 != null && var_125 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_125 != null && var_125 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_125 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_194;
      }
      
      public function get allCategories() : Array
      {
         return var_986;
      }
      
      public function onRoomExit() : void
      {
         if(var_399 != null)
         {
            var_399.dispose();
            var_399 = null;
         }
         if(var_575 != null)
         {
            var_575.dispose();
            var_575 = null;
         }
         if(var_194 != null)
         {
            var_194.dispose();
            var_194 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_670 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1428;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_670 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_575 = null;
         var_194 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_575 = param1.publicSpace;
            var_399 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2329 = param1.limit;
         this.var_1152 = param1.favouriteRoomIds.length;
         this.var_802 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_802[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_125 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_575;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1675;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_670 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1670 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_194 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_670;
      }
      
      public function get visibleCategories() : Array
      {
         return var_987;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_986 = param1;
         var_987 = new Array();
         for each(_loc2_ in var_986)
         {
            if(_loc2_.visible)
            {
               var_987.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1674;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1672;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1428 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_125 == null)
         {
            return;
         }
         var_125.dispose();
         var_125 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_399;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_802[param1] = !!param2 ? "yes" : null;
         var_1152 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_125 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1670;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_125 != null && var_125 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1675 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1674 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1671 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_194 != null)
         {
            var_194.dispose();
         }
         var_194 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_194 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1428.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1152 >= var_2329;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1672 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1671;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_194 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1673 = param1;
      }
   }
}
