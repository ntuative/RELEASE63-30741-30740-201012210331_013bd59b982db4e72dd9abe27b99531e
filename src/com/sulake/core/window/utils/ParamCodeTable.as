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
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_88;
         param1["child_window"] = const_1055;
         param1["embedded_controller"] = const_1061;
         param1["resize_to_accommodate_children"] = const_63;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_743;
         param1["mouse_dragging_target"] = const_233;
         param1["mouse_dragging_trigger"] = const_359;
         param1["mouse_scaling_target"] = const_280;
         param1["mouse_scaling_trigger"] = const_439;
         param1["horizontal_mouse_scaling_trigger"] = const_217;
         param1["vertical_mouse_scaling_trigger"] = const_206;
         param1["observe_parent_input_events"] = const_904;
         param1["optimize_region_to_layout_size"] = const_414;
         param1["parent_window"] = const_903;
         param1["relative_horizontal_scale_center"] = const_171;
         param1["relative_horizontal_scale_fixed"] = const_125;
         param1["relative_horizontal_scale_move"] = const_345;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1057;
         param1["relative_scale_fixed"] = const_702;
         param1["relative_scale_move"] = const_914;
         param1["relative_scale_strech"] = const_961;
         param1["relative_vertical_scale_center"] = const_185;
         param1["relative_vertical_scale_fixed"] = const_117;
         param1["relative_vertical_scale_move"] = const_380;
         param1["relative_vertical_scale_strech"] = const_349;
         param1["on_resize_align_left"] = const_707;
         param1["on_resize_align_right"] = const_416;
         param1["on_resize_align_center"] = const_396;
         param1["on_resize_align_top"] = const_762;
         param1["on_resize_align_bottom"] = const_463;
         param1["on_resize_align_middle"] = const_483;
         param1["on_accommodate_align_left"] = const_906;
         param1["on_accommodate_align_right"] = const_501;
         param1["on_accommodate_align_center"] = const_782;
         param1["on_accommodate_align_top"] = const_895;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_617;
         param1["route_input_events_to_parent"] = const_518;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_929;
         param1["scalable_with_mouse"] = const_988;
         param1["reflect_horizontal_resize_to_parent"] = const_398;
         param1["reflect_vertical_resize_to_parent"] = const_523;
         param1["reflect_resize_to_parent"] = const_293;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
