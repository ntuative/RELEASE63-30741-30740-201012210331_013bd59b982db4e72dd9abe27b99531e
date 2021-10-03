package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_222:String = "ROE_MOUSE_CLICK";
      
      public static const const_1642:String = "ROE_MOUSE_ENTER";
      
      public static const const_464:String = "ROE_MOUSE_MOVE";
      
      public static const const_1689:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1665:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_486:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1632:String = "";
      
      private var var_2127:Boolean;
      
      private var var_2129:Boolean;
      
      private var var_2128:Boolean;
      
      private var var_2130:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1632 = param2;
         this.var_2127 = param5;
         this.var_2129 = param6;
         this.var_2128 = param7;
         this.var_2130 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1632;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2127;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2129;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2128;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2130;
      }
   }
}
