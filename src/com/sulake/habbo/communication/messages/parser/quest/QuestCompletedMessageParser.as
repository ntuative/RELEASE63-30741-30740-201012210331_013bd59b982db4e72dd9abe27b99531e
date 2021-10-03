package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestCompletedMessageParser implements IMessageParser
   {
       
      
      private var var_1636:String;
      
      private var var_1102:QuestMessageData;
      
      public function QuestCompletedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1636 = "";
         if(this.var_1102)
         {
            this.var_1102.dispose();
         }
         this.var_1102 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1636 = param1.readString();
         this.var_1102 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignId() : String
      {
         return this.var_1636;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_1102;
      }
   }
}
