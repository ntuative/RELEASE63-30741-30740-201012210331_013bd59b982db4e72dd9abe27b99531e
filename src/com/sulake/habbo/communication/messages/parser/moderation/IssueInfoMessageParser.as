package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_59:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function get issueData() : IssueMessageData
      {
         return this.var_59;
      }
      
      public function flush() : Boolean
      {
         this.var_59 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_59 = new IssueMessageData();
         this.var_59.issueId = param1.readInteger();
         this.var_59.state = param1.readInteger();
         this.var_59.categoryId = param1.readInteger();
         this.var_59.reportedCategoryId = param1.readInteger();
         this.var_59.timeStamp = getTimer() - param1.readInteger();
         this.var_59.priority = param1.readInteger();
         this.var_59.reporterUserId = param1.readInteger();
         this.var_59.reporterUserName = param1.readString();
         this.var_59.reportedUserId = param1.readInteger();
         this.var_59.reportedUserName = param1.readString();
         this.var_59.pickerUserId = param1.readInteger();
         this.var_59.pickerUserName = param1.readString();
         this.var_59.message = param1.readString();
         this.var_59.chatRecordId = param1.readInteger();
         this.var_59.roomName = param1.readString();
         this.var_59.roomType = param1.readInteger();
         if(this.var_59.roomType == 0)
         {
            this.var_59.roomResources = param1.readString();
            this.var_59.unitPort = param1.readInteger();
            this.var_59.worldId = param1.readInteger();
         }
         if(this.var_59.roomType == 1)
         {
            this.var_59.flatType = param1.readString();
            this.var_59.flatId = param1.readInteger();
            this.var_59.flatOwnerName = param1.readString();
         }
         return true;
      }
   }
}
