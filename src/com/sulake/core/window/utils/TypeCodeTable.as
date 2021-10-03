package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_634;
         param1["bitmap"] = const_716;
         param1["border"] = const_559;
         param1["border_notify"] = const_1314;
         param1["button"] = const_492;
         param1["button_thick"] = const_675;
         param1["button_icon"] = const_1259;
         param1["button_group_left"] = const_619;
         param1["button_group_center"] = const_562;
         param1["button_group_right"] = const_686;
         param1["canvas"] = const_604;
         param1["checkbox"] = const_724;
         param1["closebutton"] = const_900;
         param1["container"] = const_313;
         param1["container_button"] = const_668;
         param1["display_object_wrapper"] = const_530;
         param1["dropmenu"] = const_455;
         param1["dropmenu_item"] = const_381;
         param1["frame"] = const_312;
         param1["frame_notify"] = const_1306;
         param1["header"] = const_688;
         param1["icon"] = const_841;
         param1["itemgrid"] = const_979;
         param1["itemgrid_horizontal"] = const_500;
         param1["itemgrid_vertical"] = const_608;
         param1["itemlist"] = const_948;
         param1["itemlist_horizontal"] = const_316;
         param1["itemlist_vertical"] = const_331;
         param1["maximizebox"] = const_1260;
         param1["menu"] = const_1238;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_921;
         param1["minimizebox"] = const_1368;
         param1["notify"] = const_1383;
         param1["GetGuestRoomMessageComposer"] = const_523;
         param1["password"] = const_560;
         param1["radiobutton"] = const_731;
         param1["region"] = const_373;
         param1["restorebox"] = const_1382;
         param1["scaler"] = const_715;
         param1["scaler_horizontal"] = const_1264;
         param1["scaler_vertical"] = const_1202;
         param1["scrollbar_horizontal"] = const_380;
         param1["scrollbar_vertical"] = const_598;
         param1["scrollbar_slider_button_up"] = const_1000;
         param1["scrollbar_slider_button_down"] = const_912;
         param1["scrollbar_slider_button_left"] = const_1029;
         param1["scrollbar_slider_button_right"] = const_891;
         param1["scrollbar_slider_bar_horizontal"] = const_840;
         param1["scrollbar_slider_bar_vertical"] = const_1005;
         param1["scrollbar_slider_track_horizontal"] = const_892;
         param1["scrollbar_slider_track_vertical"] = const_916;
         param1["scrollable_itemlist"] = const_1384;
         param1["scrollable_itemlist_vertical"] = const_423;
         param1["scrollable_itemlist_horizontal"] = const_1041;
         param1["selector"] = const_728;
         param1["selector_list"] = const_760;
         param1["submenu"] = const_921;
         param1["tab_button"] = const_704;
         param1["tab_container_button"] = const_981;
         param1["tab_context"] = const_473;
         param1["tab_content"] = const_874;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_700;
         param1["input"] = const_745;
         param1["toolbar"] = const_1256;
         param1["tooltip"] = const_310;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
