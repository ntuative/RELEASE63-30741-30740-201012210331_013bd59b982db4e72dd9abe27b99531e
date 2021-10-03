package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarEffectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_163:int;
      
      private var var_2163:int;
      
      public function RoomObjectAvatarEffectUpdateMessage(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_163 = param1;
         this.var_2163 = param2;
      }
      
      public function get effect() : int
      {
         return this.var_163;
      }
      
      public function get delayMilliSeconds() : int
      {
         return this.var_2163;
      }
   }
}
