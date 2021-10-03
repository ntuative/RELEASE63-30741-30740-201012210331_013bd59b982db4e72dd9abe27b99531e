package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_968:String = "M";
      
      public static const const_1347:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_241:int = 0;
      
      private var _name:String = "";
      
      private var var_1911:int = 0;
      
      private var var_863:String = "";
      
      private var var_546:String = "";
      
      private var var_1915:String = "";
      
      private var var_1917:int;
      
      private var var_1914:int = 0;
      
      private var var_1913:String = "";
      
      private var var_1916:int = 0;
      
      private var var_1910:int = 0;
      
      private var var_1912:String = "";
      
      private var var_152:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_152 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_152)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_152)
         {
            this.var_158 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_152)
         {
            this.var_159 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_241;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_152)
         {
            this.var_241 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_152)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1911;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_152)
         {
            this.var_1911 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_863;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_152)
         {
            this.var_863 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_152)
         {
            this.var_546 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_1915;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_152)
         {
            this.var_1915 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1917;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_152)
         {
            this.var_1917 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_1914;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_152)
         {
            this.var_1914 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_1913;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_152)
         {
            this.var_1913 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_1916;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_152)
         {
            this.var_1916 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_1910;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_152)
         {
            this.var_1910 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_1912;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_152)
         {
            this.var_1912 = param1;
         }
      }
   }
}
