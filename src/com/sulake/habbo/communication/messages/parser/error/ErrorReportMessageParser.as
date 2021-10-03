package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1457:int;
      
      private var var_1591:int;
      
      private var var_1592:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1591 = param1.readInteger();
         this.var_1457 = param1.readInteger();
         this.var_1592 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1457 = 0;
         this.var_1591 = 0;
         this.var_1592 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1457;
      }
      
      public function get messageId() : int
      {
         return this.var_1591;
      }
      
      public function get timestamp() : String
      {
         return this.var_1592;
      }
   }
}
