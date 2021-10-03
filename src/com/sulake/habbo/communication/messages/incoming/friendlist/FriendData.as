package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_812:int;
      
      private var var_637:Boolean;
      
      private var var_1714:Boolean;
      
      private var var_546:String;
      
      private var var_1228:int;
      
      private var var_1806:String;
      
      private var var_1464:String;
      
      private var var_1462:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_812 = param1.readInteger();
         this.var_637 = param1.readBoolean();
         this.var_1714 = param1.readBoolean();
         this.var_546 = param1.readString();
         this.var_1228 = param1.readInteger();
         this.var_1806 = param1.readString();
         this.var_1464 = param1.readString();
         this.var_1462 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_812;
      }
      
      public function get online() : Boolean
      {
         return this.var_637;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1714;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function get categoryId() : int
      {
         return this.var_1228;
      }
      
      public function get motto() : String
      {
         return this.var_1806;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1464;
      }
      
      public function get realName() : String
      {
         return this.var_1462;
      }
   }
}
