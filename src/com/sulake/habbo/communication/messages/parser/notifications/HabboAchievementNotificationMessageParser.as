package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1420:int;
      
      private var var_1643:int;
      
      private var var_1987:int;
      
      private var var_1860:int;
      
      private var var_1421:int;
      
      private var var_2153:String = "";
      
      private var var_2476:String = "";
      
      private var var_2477:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1420 = param1.readInteger();
         this.var_2153 = param1.readString();
         this.var_1643 = param1.readInteger();
         this.var_1987 = param1.readInteger();
         this.var_1860 = param1.readInteger();
         this.var_1421 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_2476 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1420;
      }
      
      public function get points() : int
      {
         return this.var_1643;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1987;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1860;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1421;
      }
      
      public function get badgeID() : String
      {
         return this.var_2153;
      }
      
      public function get achievementID() : int
      {
         return this.var_2477;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2476;
      }
   }
}
