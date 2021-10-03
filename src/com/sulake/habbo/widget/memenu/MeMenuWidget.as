package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_702:String = "me_menu_settings_view";
      
      public static const const_748:String = "me_menu_effects_view";
      
      public static const const_112:String = "me_menu_top_view";
      
      public static const const_1324:String = "me_menu_rooms_view";
      
      public static const const_872:String = "me_menu_dance_moves_view";
      
      public static const const_279:String = "me_menu_my_clothes_view";
       
      
      private var var_1801:Boolean = false;
      
      private var var_398:Boolean = false;
      
      private var var_1454:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1453:int = 0;
      
      private var var_1805:int = 0;
      
      private var var_1802:Boolean = false;
      
      private var var_254:Boolean = false;
      
      private var var_1803:int = 0;
      
      private var var_1800:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_591:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1195:int = 0;
      
      private var var_1804:Boolean = false;
      
      private var var_1015:Point;
      
      private var var_33:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1015 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1804 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_112);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_673,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_538,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_667,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_671,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_327,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_525,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_573,onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_243,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_217,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_657,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_206,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_322,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_111,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_460,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_191,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_33 != null && var_33.window.name == const_279)
         {
            changeView(const_112);
         }
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_398)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_591;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_254)
         {
            return;
         }
         if(var_33.window.name == const_702)
         {
            (var_33 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1195 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1453 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1453.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_254 && var_33.window.name == const_279))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_568);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_673,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_538,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_667,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_671,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_327,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_243,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_217,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_657,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_525,onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_573,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_206,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_322,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_460,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_111,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_191,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_33 != null)
         {
            var_33.dispose();
            var_33 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1801;
      }
      
      public function get creditBalance() : int
      {
         return var_1453;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1800 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_460:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_254 + " view: " + var_33.window.name);
               if(var_254 != true || var_33.window.name != const_112)
               {
                  return;
               }
               (var_33 as MeMenuMainView).setIconAssets("clothes_icon",const_112,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_111:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_1802;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1800 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1805;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_591 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_591 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1195;
         var_1195 = param1.daysLeft;
         var_1805 = param1.periodsLeft;
         var_1803 = param1.pastPeriods;
         var_1801 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1454);
         var_1454 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_33 != null)
            {
               changeView(var_33.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1802 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_33 != null && var_33.window.name != const_279)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1327,HabboWindowStyle.const_1051,HabboWindowParam.const_40,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_591 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_591 = true;
            }
         }
         if(var_33 != null && var_33.window.name == const_748)
         {
            (var_33 as MeMenuEffectsView).include(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1803;
      }
      
      public function get habboClubDays() : int
      {
         return var_1195;
      }
      
      public function updateSize() : void
      {
         if(var_33 != null)
         {
            var_1015.x = var_33.window.width + 10;
            var_1015.y = var_33.window.height;
            var_33.window.x = 5;
            var_33.window.y = 0;
            _mainContainer.width = var_1015.x;
            _mainContainer.height = var_1015.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_254 = !var_254;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_254 = false;
               break;
            default:
               return;
         }
         if(var_254)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_566);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_33 != null)
         {
            _mainContainer.removeChild(var_33.window);
            var_33.dispose();
            var_33 = null;
         }
         var_254 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_33 != null && var_33.window.name == const_279)
         {
            changeView(const_112);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1804;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_112:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_748:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_872:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_279:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1324:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_702:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_33 != null)
            {
               _mainContainer.removeChild(var_33.window);
               var_33.dispose();
               var_33 = null;
            }
            var_33 = _loc2_;
            var_33.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1454;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_112);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_696);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_254 = true;
      }
   }
}
