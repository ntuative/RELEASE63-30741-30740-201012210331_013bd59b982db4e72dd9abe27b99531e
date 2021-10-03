package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_958:Boolean;
      
      private var var_2346:int;
      
      private var var_2348:String;
      
      private var var_308:int;
      
      private var var_2347:int;
      
      private var var_2345:String;
      
      private var var_2344:String;
      
      private var var_2343:String;
      
      private var var_774:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_774 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_958 = false;
            return;
         }
         this.var_958 = true;
         this.var_2346 = int(_loc2_);
         this.var_2348 = param1.readString();
         this.var_308 = int(param1.readString());
         this.var_2347 = param1.readInteger();
         this.var_2345 = param1.readString();
         this.var_2344 = param1.readString();
         this.var_2343 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_774.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2346;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2348;
      }
      
      public function get flatId() : int
      {
         return this.var_308;
      }
      
      public function get eventType() : int
      {
         return this.var_2347;
      }
      
      public function get eventName() : String
      {
         return this.var_2345;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2344;
      }
      
      public function get creationTime() : String
      {
         return this.var_2343;
      }
      
      public function get tags() : Array
      {
         return this.var_774;
      }
      
      public function get exists() : Boolean
      {
         return this.var_958;
      }
   }
}
