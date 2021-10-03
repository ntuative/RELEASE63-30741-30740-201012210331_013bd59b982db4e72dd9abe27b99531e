package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_695:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2303:int;
      
      private var var_2304:int;
      
      private var _color:uint;
      
      private var var_1110:int;
      
      private var var_2448:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_695);
         this.var_2303 = param1;
         this.var_2304 = param2;
         this._color = param3;
         this.var_1110 = param4;
         this.var_2448 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2303;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2304;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1110;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2448;
      }
   }
}
