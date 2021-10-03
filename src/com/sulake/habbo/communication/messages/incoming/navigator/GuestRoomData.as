package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_308:int;
      
      private var var_720:Boolean;
      
      private var var_811:String;
      
      private var _ownerName:String;
      
      private var var_1923:int;
      
      private var var_1983:int;
      
      private var var_2249:int;
      
      private var var_1466:String;
      
      private var var_2246:int;
      
      private var var_2247:Boolean;
      
      private var var_739:int;
      
      private var var_1228:int;
      
      private var var_2245:String;
      
      private var var_774:Array;
      
      private var var_2248:RoomThumbnailData;
      
      private var var_1919:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_774 = new Array();
         super();
         this.var_308 = param1.readInteger();
         this.var_720 = param1.readBoolean();
         this.var_811 = param1.readString();
         this._ownerName = param1.readString();
         this.var_1923 = param1.readInteger();
         this.var_1983 = param1.readInteger();
         this.var_2249 = param1.readInteger();
         this.var_1466 = param1.readString();
         this.var_2246 = param1.readInteger();
         this.var_2247 = param1.readBoolean();
         this.var_739 = param1.readInteger();
         this.var_1228 = param1.readInteger();
         this.var_2245 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_774.push(_loc4_);
            _loc3_++;
         }
         this.var_2248 = new RoomThumbnailData(param1);
         this.var_1919 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_774 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_308;
      }
      
      public function get event() : Boolean
      {
         return this.var_720;
      }
      
      public function get roomName() : String
      {
         return this.var_811;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_1923;
      }
      
      public function get userCount() : int
      {
         return this.var_1983;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2249;
      }
      
      public function get description() : String
      {
         return this.var_1466;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2246;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2247;
      }
      
      public function get score() : int
      {
         return this.var_739;
      }
      
      public function get categoryId() : int
      {
         return this.var_1228;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2245;
      }
      
      public function get tags() : Array
      {
         return this.var_774;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2248;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1919;
      }
   }
}
