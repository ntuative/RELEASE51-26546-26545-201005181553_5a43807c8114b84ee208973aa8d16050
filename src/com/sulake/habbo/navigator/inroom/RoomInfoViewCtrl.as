package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_772:IWindowContainer;
      
      private var var_1111:ITextWindow;
      
      private var var_211:RoomSettingsCtrl;
      
      private var var_1364:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1369:ITextWindow;
      
      private var var_378:IWindowContainer;
      
      private var var_2252:IWindowContainer;
      
      private var var_2251:ITextWindow;
      
      private var var_942:IWindowContainer;
      
      private var var_1606:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_705:ITextWindow;
      
      private var var_1607:IWindowContainer;
      
      private var var_1365:IWindowContainer;
      
      private var var_943:ITextWindow;
      
      private var var_1112:ITextFieldWindow;
      
      private var var_323:IWindowContainer;
      
      private var var_941:ITextWindow;
      
      private var var_1609:IButtonWindow;
      
      private var var_1113:ITextWindow;
      
      private var var_2373:int;
      
      private var var_1363:IContainerButtonWindow;
      
      private var var_944:IWindowContainer;
      
      private var var_1368:ITextWindow;
      
      private var var_1366:IContainerButtonWindow;
      
      private var var_1608:ITextWindow;
      
      private var var_1605:IButtonWindow;
      
      private var var_840:TagRenderer;
      
      private var var_2096:ITextWindow;
      
      private var var_379:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_773:ITextWindow;
      
      private var var_283:RoomThumbnailCtrl;
      
      private var var_1367:IContainerButtonWindow;
      
      private var var_2253:IWindowContainer;
      
      private var var_282:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_379 = new RoomEventViewCtrl(_navigator);
         var_211 = new RoomSettingsCtrl(_navigator,this,true);
         var_283 = new RoomThumbnailCtrl(_navigator);
         var_840 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_211);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_211.active = true;
         this.var_379.active = false;
         this.var_283.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1606.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1605.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1607.visible = Util.hasVisibleChildren(var_1607);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_705.text = param1.roomName;
         var_705.height = NaN;
         _ownerName.text = param1.ownerName;
         var_943.text = param1.description;
         var_840.refreshTags(var_378,param1.tags);
         var_943.visible = false;
         if(param1.description != "")
         {
            var_943.height = NaN;
            var_943.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_378,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_378,"thumb_down",_loc3_,onThumbDown,0);
         var_2251.visible = _loc3_;
         var_941.visible = !_loc3_;
         var_1608.visible = !_loc3_;
         var_1608.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_378,"home",param2,null,0);
         _navigator.refreshButton(var_378,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_378,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_705.y,0);
         var_378.visible = true;
         var_378.height = Util.getLowestPoint(var_378);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_416,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1609.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1364.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1367.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1363.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1366.visible = _navigator.data.canEditRoomSettings && param1;
         var_1365.visible = Util.hasVisibleChildren(var_1365);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_379.active = false;
         this.var_211.active = false;
         this.var_283.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_379.active = false;
         this.var_211.active = false;
         this.var_283.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_416,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_323);
         var_323.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_211.refresh(var_323);
         this.var_283.refresh(var_323);
         Util.moveChildrenToColumn(var_323,["room_details","room_buttons"],0,2);
         var_323.height = Util.getLowestPoint(var_323);
         var_323.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1112.setSelection(0,var_1112.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_282);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_379.refresh(var_282);
         if(Util.hasVisibleChildren(var_282) && !this.var_283.active)
         {
            Util.moveChildrenToColumn(var_282,["event_details","event_buttons"],0,2);
            var_282.height = Util.getLowestPoint(var_282);
            var_282.visible = true;
         }
         else
         {
            var_282.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_379.active = true;
         this.var_211.active = false;
         this.var_283.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1111.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1111.height = NaN;
         var_1369.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1369.height = NaN;
         Util.moveChildrenToColumn(var_772,["public_space_name","public_space_desc"],var_1111.y,0);
         var_772.visible = true;
         var_772.height = Math.max(86,Util.getLowestPoint(var_772));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_944.visible = true;
            var_1112.text = this.getEmbedData();
         }
         else
         {
            var_944.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_211.load(param1);
         this.var_211.active = true;
         this.var_379.active = false;
         this.var_283.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_211.active = false;
         this.var_379.active = false;
         this.var_283.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_73,false);
         _window.setParamFlag(HabboWindowParam.const_1367,true);
         _window.visible = false;
         var_323 = IWindowContainer(find("room_info"));
         var_378 = IWindowContainer(find("room_details"));
         var_772 = IWindowContainer(find("public_space_details"));
         var_2253 = IWindowContainer(find("owner_name_cont"));
         var_2252 = IWindowContainer(find("rating_cont"));
         var_1365 = IWindowContainer(find("room_buttons"));
         var_705 = ITextWindow(find("room_name"));
         var_1111 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_943 = ITextWindow(find("room_desc"));
         var_1369 = ITextWindow(find("public_space_desc"));
         var_1113 = ITextWindow(find("owner_caption"));
         var_941 = ITextWindow(find("rating_caption"));
         var_2251 = ITextWindow(find("rate_caption"));
         var_1608 = ITextWindow(find("rating_txt"));
         var_282 = IWindowContainer(find("event_info"));
         var_942 = IWindowContainer(find("event_details"));
         var_1607 = IWindowContainer(find("event_buttons"));
         var_2096 = ITextWindow(find("event_name"));
         var_773 = ITextWindow(find("event_desc"));
         var_1364 = IContainerButtonWindow(find("add_favourite_button"));
         var_1367 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1363 = IContainerButtonWindow(find("make_home_button"));
         var_1366 = IContainerButtonWindow(find("unmake_home_button"));
         var_1609 = IButtonWindow(find("room_settings_button"));
         var_1606 = IButtonWindow(find("create_event_button"));
         var_1605 = IButtonWindow(find("edit_event_button"));
         var_944 = IWindowContainer(find("embed_info"));
         var_1368 = ITextWindow(find("embed_info_txt"));
         var_1112 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1364,onAddFavouriteClick);
         Util.setProcDirectly(var_1367,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1609,onRoomSettingsClick);
         Util.setProcDirectly(var_1363,onMakeHomeClick);
         Util.setProcDirectly(var_1366,onUnmakeHomeClick);
         Util.setProcDirectly(var_1606,onEventSettingsClick);
         Util.setProcDirectly(var_1605,onEventSettingsClick);
         Util.setProcDirectly(var_1112,onEmbedSrcClick);
         _navigator.refreshButton(var_1364,"favourite",true,null,0);
         _navigator.refreshButton(var_1367,"favourite",true,null,0);
         _navigator.refreshButton(var_1363,"home",true,null,0);
         _navigator.refreshButton(var_1366,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_323,onHover);
         Util.setProcDirectly(var_282,onHover);
         var_1113.width = var_1113.textWidth;
         Util.moveChildrenToRow(var_2253,["owner_caption","owner_name"],var_1113.x,var_1113.y,3);
         var_941.width = var_941.textWidth;
         Util.moveChildrenToRow(var_2252,["rating_caption","rating_txt"],var_941.x,var_941.y,3);
         var_1368.height = NaN;
         Util.moveChildrenToColumn(var_944,["embed_info_txt","embed_src_txt"],var_1368.y,2);
         var_944.height = Util.getLowestPoint(var_944) + 5;
         var_2373 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2096.text = param1.eventName;
         var_773.text = param1.eventDescription;
         var_840.refreshTags(var_942,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_773.visible = false;
         if(param1.eventDescription != "")
         {
            var_773.height = NaN;
            var_773.y = Util.getLowestPoint(var_942) + 2;
            var_773.visible = true;
         }
         var_942.visible = true;
         var_942.height = Util.getLowestPoint(var_942);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1033,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
