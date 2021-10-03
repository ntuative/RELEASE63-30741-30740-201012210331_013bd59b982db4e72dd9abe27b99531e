package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1491:int;
      
      private var var_2560:String;
      
      private var var_1420:int;
      
      private var var_546:String;
      
      private var var_1401:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1491 = param1.readInteger();
         this.var_2560 = param1.readString();
         this.var_1420 = param1.readInteger();
         this.var_546 = param1.readString();
         this.var_1401 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1491;
      }
      
      public function get petName() : String
      {
         return this.var_2560;
      }
      
      public function get level() : int
      {
         return this.var_1420;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function get petType() : int
      {
         return this.var_1401;
      }
   }
}
