package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_215:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2507:int = 0;
      
      private var var_2509:int = 0;
      
      private var var_2506:int = 0;
      
      private var var_2508:Boolean = false;
      
      private var var_2088:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_215,param6,param7);
         this.var_2507 = param1;
         this.var_2509 = param2;
         this.var_2506 = param3;
         this.var_2508 = param4;
         this.var_2088 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2507;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2509;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2506;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2508;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2088;
      }
   }
}
