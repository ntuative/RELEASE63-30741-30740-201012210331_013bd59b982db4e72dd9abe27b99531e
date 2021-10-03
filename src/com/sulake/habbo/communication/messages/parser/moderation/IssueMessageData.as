package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_142:int = 1;
      
      public static const const_327:int = 2;
      
      public static const const_1379:int = 3;
       
      
      private var var_2074:int;
      
      private var _state:int;
      
      private var var_1228:int;
      
      private var var_2072:int;
      
      private var var_1549:int;
      
      private var var_2071:int;
      
      private var var_2070:int = 0;
      
      private var var_2075:int;
      
      private var var_2073:String;
      
      private var var_1334:int;
      
      private var var_1701:String;
      
      private var var_2080:int;
      
      private var var_2076:String;
      
      private var _message:String;
      
      private var var_2078:int;
      
      private var var_811:String;
      
      private var var_1795:int;
      
      private var var_2077:String;
      
      private var var_308:int;
      
      private var var_2082:String;
      
      private var var_2069:String;
      
      private var var_2079:int;
      
      private var var_2081:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2074;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1228;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2072;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1549;
      }
      
      public function get priority() : int
      {
         return this.var_2071 + this.var_2070;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2075;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2073;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1334;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1701;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2080;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2076;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2078;
      }
      
      public function get roomName() : String
      {
         return this.var_811;
      }
      
      public function get roomType() : int
      {
         return this.var_1795;
      }
      
      public function get flatType() : String
      {
         return this.var_2077;
      }
      
      public function get flatId() : int
      {
         return this.var_308;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2082;
      }
      
      public function get roomResources() : String
      {
         return this.var_2069;
      }
      
      public function get unitPort() : int
      {
         return this.var_2079;
      }
      
      public function get worldId() : int
      {
         return this.var_2081;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2074 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1228 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2072 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1549 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2071 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2070 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2075 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2073 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1334 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1701 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2080 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2076 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_2078 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_811 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1795 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2077 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_308 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2082 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2069 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2079 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2081 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1549) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
