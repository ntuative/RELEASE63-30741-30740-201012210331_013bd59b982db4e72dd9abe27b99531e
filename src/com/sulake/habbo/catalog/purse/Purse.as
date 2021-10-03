package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_452:int = 0;
       
      
      private var var_2315:int = 0;
      
      private var var_1335:Dictionary;
      
      private var var_1702:int = 0;
      
      private var var_1703:int = 0;
      
      private var var_2308:Boolean = false;
      
      private var var_2313:int = 0;
      
      private var var_2314:int = 0;
      
      public function Purse()
      {
         this.var_1335 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2315;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2315 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1702;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1702 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1703;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1703 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1702 > 0 || this.var_1703 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2308;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2308 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2313;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2313 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2314;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2314 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1335;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1335 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1335[param1];
      }
   }
}
