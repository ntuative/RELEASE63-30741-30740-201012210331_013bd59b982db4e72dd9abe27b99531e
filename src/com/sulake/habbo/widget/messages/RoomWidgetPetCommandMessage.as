package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_817:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_784:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1491:int = 0;
      
      private var var_164:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1491 = param2;
         this.var_164 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1491;
      }
      
      public function get value() : String
      {
         return this.var_164;
      }
   }
}
