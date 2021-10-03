package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_731:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2006:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_731);
         this.var_2006 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2006;
      }
   }
}
