package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_863:String = "";
      
      private var var_546:String = "";
      
      private var var_1915:String = "";
      
      private var var_1917:int;
      
      private var var_1914:int = 0;
      
      private var var_1913:String = "";
      
      private var var_1916:int = 0;
      
      private var var_1910:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1917;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_863;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_863 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_546 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_1915;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_1915 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1914;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1914 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_1913;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_1913 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_1916;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_1916 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1910;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1910 = param1;
      }
   }
}
