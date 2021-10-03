package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_60:String = "RWDSUE_DIMMER_STATE";
       
      
      private var _state:int;
      
      private var var_1999:int;
      
      private var var_1108:int;
      
      private var _color:uint;
      
      private var var_1110:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_60,param6,param7);
         this._state = param1;
         this.var_1999 = param2;
         this.var_1108 = param3;
         this._color = param4;
         this.var_1110 = param5;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get presetId() : int
      {
         return this.var_1999;
      }
      
      public function get effectId() : int
      {
         return this.var_1108;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : uint
      {
         return this.var_1110;
      }
   }
}
