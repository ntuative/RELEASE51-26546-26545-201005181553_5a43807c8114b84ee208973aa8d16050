package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["GetGuestRoomMessageComposer"] = const_135;
         param1["bound_to_parent_rect"] = const_91;
         param1["child_window"] = const_1022;
         param1["embedded_controller"] = const_309;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_578;
         param1["mouse_dragging_target"] = const_244;
         param1["mouse_dragging_trigger"] = const_347;
         param1["mouse_scaling_target"] = const_258;
         param1["mouse_scaling_trigger"] = const_371;
         param1["horizontal_mouse_scaling_trigger"] = const_224;
         param1["vertical_mouse_scaling_trigger"] = const_226;
         param1["observe_parent_input_events"] = const_989;
         param1["optimize_region_to_layout_size"] = const_474;
         param1["parent_window"] = const_857;
         param1["relative_horizontal_scale_center"] = const_186;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_302;
         param1["relative_horizontal_scale_strech"] = const_262;
         param1["relative_scale_center"] = const_855;
         param1["relative_scale_fixed"] = const_759;
         param1["relative_scale_move"] = const_1045;
         param1["relative_scale_strech"] = const_954;
         param1["relative_vertical_scale_center"] = const_173;
         param1["relative_vertical_scale_fixed"] = const_124;
         param1["relative_vertical_scale_move"] = const_357;
         param1["relative_vertical_scale_strech"] = const_259;
         param1["on_resize_align_left"] = const_719;
         param1["on_resize_align_right"] = const_450;
         param1["on_resize_align_center"] = const_493;
         param1["on_resize_align_top"] = const_589;
         param1["on_resize_align_bottom"] = const_489;
         param1["on_resize_align_middle"] = const_418;
         param1["on_accommodate_align_left"] = const_990;
         param1["on_accommodate_align_right"] = const_433;
         param1["on_accommodate_align_center"] = const_663;
         param1["on_accommodate_align_top"] = const_932;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_528;
         param1["route_input_events_to_parent"] = const_454;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_904;
         param1["scalable_with_mouse"] = const_866;
         param1["reflect_horizontal_resize_to_parent"] = const_428;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_252;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
