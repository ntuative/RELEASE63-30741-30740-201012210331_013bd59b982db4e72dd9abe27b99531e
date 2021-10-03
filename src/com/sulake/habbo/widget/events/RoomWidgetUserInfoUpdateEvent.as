package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_221:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_207:String = "RWUIUE_PEER";
      
      public static const const_1306:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1034:int = 2;
      
      public static const const_1037:int = 3;
      
      public static const const_1401:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1806:String = "";
      
      private var var_1917:int;
      
      private var var_1914:int = 0;
      
      private var var_1910:int = 0;
      
      private var var_546:String = "";
      
      private var var_39:BitmapData = null;
      
      private var var_244:Array;
      
      private var var_1203:int = 0;
      
      private var var_2200:String = "";
      
      private var var_2198:int = 0;
      
      private var var_2199:int = 0;
      
      private var var_1584:Boolean = false;
      
      private var var_1462:String = "";
      
      private var var_2292:Boolean = false;
      
      private var var_2288:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2291:Boolean = false;
      
      private var var_2295:Boolean = false;
      
      private var var_2293:Boolean = false;
      
      private var var_2289:Boolean = false;
      
      private var var_2294:Boolean = false;
      
      private var var_2287:Boolean = false;
      
      private var var_2290:int = 0;
      
      private var var_1585:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_244 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1806 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1806;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1917;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1914 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1914;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1910 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1910;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_546 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_39 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_244 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_244;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1203 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1203;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2200 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2200;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2292 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2292;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2291 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2291;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2295 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2295;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2293 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2293;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2289 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2289;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2294 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2294;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2287 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2287;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2290;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2288 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2288;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1585 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1585;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2198 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2198;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2199;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1584 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1584;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1462 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1462;
      }
   }
}
