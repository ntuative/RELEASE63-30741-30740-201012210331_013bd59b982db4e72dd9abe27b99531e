package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1889:String;
      
      protected var var_1340:Number;
      
      protected var var_2633:Boolean;
      
      protected var var_2636:Boolean;
      
      protected var var_2565:Boolean;
      
      protected var var_2634:Boolean;
      
      protected var var_2635:int;
      
      protected var var_2563:int;
      
      protected var var_2568:int;
      
      protected var var_2567:int;
      
      protected var var_1548:String;
      
      protected var var_2558:int;
      
      protected var var_838:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2565 = param5;
         this.var_2636 = param6;
         this.var_2633 = param7;
         this.var_2634 = param8;
         this.var_1889 = param9;
         this.var_1340 = param10;
         this.var_2635 = param11;
         this.var_2563 = param12;
         this.var_2568 = param13;
         this.var_2567 = param14;
         this.var_1548 = param15;
         this.var_2558 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1889;
      }
      
      public function get extra() : Number
      {
         return this.var_1340;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2633;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2636;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2565;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2634;
      }
      
      public function get expires() : int
      {
         return this.var_2635;
      }
      
      public function get creationDay() : int
      {
         return this.var_2563;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2568;
      }
      
      public function get creationYear() : int
      {
         return this.var_2567;
      }
      
      public function get slotId() : String
      {
         return this.var_1548;
      }
      
      public function get songId() : int
      {
         return this.var_2558;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_838 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_838;
      }
   }
}
