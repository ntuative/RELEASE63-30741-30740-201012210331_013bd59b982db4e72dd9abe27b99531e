package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_787:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_950:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2307:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_787);
         this.var_2307 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2307;
      }
   }
}
