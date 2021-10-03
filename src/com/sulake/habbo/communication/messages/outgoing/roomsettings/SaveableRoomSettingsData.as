package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1466:String;
      
      private var var_1923:int;
      
      private var _password:String;
      
      private var var_1228:int;
      
      private var var_1921:int;
      
      private var var_774:Array;
      
      private var var_1920:Array;
      
      private var var_1919:Boolean;
      
      private var var_1925:Boolean;
      
      private var var_1926:Boolean;
      
      private var var_1922:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1919;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_1919 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_1925;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_1925 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_1926;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_1926 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_1922;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_1922 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1466;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1466 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1923;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1923 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1228;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1228 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_1921;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_1921 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_774;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_774 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_1920;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_1920 = param1;
      }
   }
}
