package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_782:String;
      
      private var var_1457:int;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_782 = param1.readString();
         this.var_1457 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_782;
      }
      
      public function get errorCode() : int
      {
         return this.var_1457;
      }
   }
}
