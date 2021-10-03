package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_2410:Number = 0;
      
      private var var_2407:Number = 0;
      
      private var var_2408:Number = 0;
      
      private var var_2406:Number = 0;
      
      private var var_241:int = 0;
      
      private var var_2365:int = 0;
      
      private var var_290:Array;
      
      private var var_2409:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_290 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_158 = param3;
         this.var_159 = param4;
         this.var_2410 = param5;
         this.var_241 = param6;
         this.var_2365 = param7;
         this.var_2407 = param8;
         this.var_2408 = param9;
         this.var_2406 = param10;
         this.var_2409 = param11;
         this.var_290 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function get localZ() : Number
      {
         return this.var_2410;
      }
      
      public function get targetX() : Number
      {
         return this.var_2407;
      }
      
      public function get targetY() : Number
      {
         return this.var_2408;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2406;
      }
      
      public function get dir() : int
      {
         return this.var_241;
      }
      
      public function get dirHead() : int
      {
         return this.var_2365;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2409;
      }
      
      public function get actions() : Array
      {
         return this.var_290.slice();
      }
   }
}
