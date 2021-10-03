package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2599:int;
      
      private var var_2602:int;
      
      private var var_637:Boolean;
      
      private var var_2597:int;
      
      private var var_2598:int;
      
      private var var_2601:int;
      
      private var var_2600:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2599 = param1.readInteger();
         this.var_2602 = param1.readInteger();
         this.var_637 = param1.readBoolean();
         this.var_2597 = param1.readInteger();
         this.var_2598 = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this.var_2600 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2599;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2602;
      }
      
      public function get online() : Boolean
      {
         return this.var_637;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2597;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2598;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2601;
      }
      
      public function get banCount() : int
      {
         return this.var_2600;
      }
   }
}
