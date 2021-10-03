package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1420:int;
      
      private var var_288:String;
      
      private var var_1988:int;
      
      private var var_1987:int;
      
      private var var_1860:int;
      
      private var var_1989:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1420 = param1.readInteger();
         this.var_288 = param1.readString();
         this.var_1988 = param1.readInteger();
         this.var_1987 = param1.readInteger();
         this.var_1860 = param1.readInteger();
         this.var_1989 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_288;
      }
      
      public function get level() : int
      {
         return this.var_1420;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1988;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1987;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1860;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1989;
      }
   }
}
