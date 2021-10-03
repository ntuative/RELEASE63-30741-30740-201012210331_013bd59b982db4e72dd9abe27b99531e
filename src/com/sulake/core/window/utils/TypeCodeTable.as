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
         param1["background"] = const_674;
         param1["bitmap"] = const_664;
         param1["border"] = const_681;
         param1["border_notify"] = const_1422;
         param1["button"] = const_429;
         param1["button_thick"] = const_736;
         param1["button_icon"] = const_1494;
         param1["button_group_left"] = const_690;
         param1["button_group_center"] = const_658;
         param1["button_group_right"] = const_612;
         param1["canvas"] = const_730;
         param1["checkbox"] = const_814;
         param1["closebutton"] = const_1083;
         param1["container"] = const_363;
         param1["container_button"] = const_592;
         param1["display_object_wrapper"] = const_771;
         param1["dropmenu"] = const_412;
         param1["dropmenu_item"] = const_413;
         param1["frame"] = const_321;
         param1["frame_notify"] = const_1399;
         param1["header"] = const_587;
         param1["icon"] = const_1004;
         param1["itemgrid"] = const_930;
         param1["itemgrid_horizontal"] = const_420;
         param1["itemgrid_vertical"] = const_805;
         param1["itemlist"] = const_1106;
         param1["itemlist_horizontal"] = const_323;
         param1["itemlist_vertical"] = const_367;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1483;
         param1["menu_item"] = const_1427;
         param1["submenu"] = const_920;
         param1["minimizebox"] = const_1261;
         param1["notify"] = const_1450;
         param1["null"] = const_566;
         param1["password"] = const_775;
         param1["radiobutton"] = const_636;
         param1["region"] = const_755;
         param1["restorebox"] = const_1466;
         param1["scaler"] = const_757;
         param1["scaler_horizontal"] = const_1380;
         param1["scaler_vertical"] = const_1392;
         param1["scrollbar_horizontal"] = const_468;
         param1["scrollbar_vertical"] = const_761;
         param1["scrollbar_slider_button_up"] = const_975;
         param1["scrollbar_slider_button_down"] = const_1024;
         param1["scrollbar_slider_button_left"] = const_921;
         param1["scrollbar_slider_button_right"] = const_891;
         param1["scrollbar_slider_bar_horizontal"] = const_1012;
         param1["scrollbar_slider_bar_vertical"] = const_1066;
         param1["scrollbar_slider_track_horizontal"] = const_947;
         param1["scrollbar_slider_track_vertical"] = const_1081;
         param1["scrollable_itemlist"] = const_1465;
         param1["scrollable_itemlist_vertical"] = const_399;
         param1["scrollable_itemlist_horizontal"] = const_1088;
         param1["selector"] = const_758;
         param1["selector_list"] = const_756;
         param1["submenu"] = const_920;
         param1["tab_button"] = const_591;
         param1["tab_container_button"] = const_972;
         param1["tab_context"] = const_334;
         param1["tab_content"] = const_1111;
         param1["tab_selector"] = const_740;
         param1["text"] = const_688;
         param1["input"] = const_772;
         param1["toolbar"] = const_1365;
         param1["tooltip"] = const_378;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
