package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1338:Boolean;
      
      private var var_1075:Boolean;
      
      private var var_1339:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1338;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1075;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1339;
      }
      
      public function flush() : Boolean
      {
         this.var_1338 = false;
         this.var_1075 = false;
         this.var_1339 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1338 = param1.readBoolean();
         this.var_1075 = param1.readBoolean();
         this.var_1339 = param1.readBoolean();
         return true;
      }
   }
}
