package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var _id:String;
      
      private var var_1311:Boolean;
      
      private var var_1943:Boolean;
      
      private var var_174:int = 120;
      
      private var var_1468:String;
      
      private var var_1211:String = "-1";
      
      private var var_1469:String = "-1";
      
      private var var_1467:String = "-1";
      
      private var var_1942:String;
      
      private var var_420:String;
      
      private var _frames:XMLList;
      
      private var var_296:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         this._id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            this.var_1311 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            this.var_1943 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            this.var_174 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            this.var_1468 = param1.@namebase;
         }
         else
         {
            this.var_1468 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            this.var_1211 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            this.var_1469 = param1.@nextState;
         }
         else
         {
            this.var_1469 = this._id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            this.var_1467 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            this.var_1942 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            this.var_420 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            this._frames = _loc3_;
         }
         if(param1.attribute("label").length() > 0)
         {
            this.var_296 = param1.@label;
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get loop() : Boolean
      {
         return this.var_1311;
      }
      
      public function get bounce() : Boolean
      {
         return this.var_1943;
      }
      
      public function get timer() : int
      {
         return this.var_174;
      }
      
      public function get nameBase() : String
      {
         return this.var_1468;
      }
      
      public function get hasStateOver() : Boolean
      {
         return this.var_1211 != "-1";
      }
      
      public function get stateOver() : String
      {
         return this.var_1211;
      }
      
      public function get nextState() : String
      {
         return this.var_1469;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return this.var_1467 != "-1";
      }
      
      public function get defaultState() : String
      {
         return this.var_1467;
      }
      
      public function get tooltip() : String
      {
         return this.var_1942;
      }
      
      public function get frames() : XMLList
      {
         return this._frames;
      }
      
      public function get background() : String
      {
         return this.var_420;
      }
      
      public function get label() : String
      {
         return this.var_296;
      }
   }
}
