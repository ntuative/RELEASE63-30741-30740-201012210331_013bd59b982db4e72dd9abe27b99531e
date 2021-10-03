package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1246:Boolean;
      
      private var var_2051:int;
      
      private var var_1539:int;
      
      private var var_1540:int;
      
      private var var_2050:int;
      
      private var var_2045:int;
      
      private var var_2048:int;
      
      private var var_2047:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1246;
      }
      
      public function get commission() : int
      {
         return this.var_2051;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1539;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1540;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2045;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2050;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2048;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2047;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1246 = param1.readBoolean();
         this.var_2051 = param1.readInteger();
         this.var_1539 = param1.readInteger();
         this.var_1540 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_2050 = param1.readInteger();
         this.var_2048 = param1.readInteger();
         this.var_2047 = param1.readInteger();
         return true;
      }
   }
}
