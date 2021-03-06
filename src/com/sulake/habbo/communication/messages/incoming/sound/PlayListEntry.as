package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2558:int;
      
      private var var_2573:int;
      
      private var var_2571:String;
      
      private var var_2572:String;
      
      private var var_2574:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2558 = param1;
         this.var_2573 = param2;
         this.var_2571 = param3;
         this.var_2572 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2558;
      }
      
      public function get length() : int
      {
         return this.var_2573;
      }
      
      public function get name() : String
      {
         return this.var_2571;
      }
      
      public function get creator() : String
      {
         return this.var_2572;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2574;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2574 = param1;
      }
   }
}
