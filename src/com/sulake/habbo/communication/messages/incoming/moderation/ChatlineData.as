package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2125:int;
      
      private var var_2122:int;
      
      private var var_2123:int;
      
      private var var_2124:String;
      
      private var var_1727:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2125 = param1.readInteger();
         this.var_2122 = param1.readInteger();
         this.var_2123 = param1.readInteger();
         this.var_2124 = param1.readString();
         this.var_1727 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2125;
      }
      
      public function get minute() : int
      {
         return this.var_2122;
      }
      
      public function get chatterId() : int
      {
         return this.var_2123;
      }
      
      public function get chatterName() : String
      {
         return this.var_2124;
      }
      
      public function get msg() : String
      {
         return this.var_1727;
      }
   }
}
