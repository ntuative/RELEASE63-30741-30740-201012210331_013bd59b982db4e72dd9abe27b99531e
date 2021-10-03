package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1786:int;
      
      private var var_2519:int;
      
      private var var_1334:int;
      
      private var var_2078:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1786 = param1.readInteger();
         this.var_2519 = param1.readInteger();
         this.var_1334 = param1.readInteger();
         this.var_2078 = param1.readInteger();
         this.var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1786);
      }
      
      public function get callId() : int
      {
         return this.var_1786;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2519;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1334;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2078;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_113;
      }
   }
}
