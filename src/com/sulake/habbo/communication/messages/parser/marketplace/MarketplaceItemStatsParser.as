package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2176:int;
      
      private var var_2244:int;
      
      private var var_2241:int;
      
      private var _dayOffsets:Array;
      
      private var var_1676:Array;
      
      private var var_1677:Array;
      
      private var var_2243:int;
      
      private var var_2242:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2176;
      }
      
      public function get offerCount() : int
      {
         return this.var_2244;
      }
      
      public function get historyLength() : int
      {
         return this.var_2241;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1676;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1677;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2243;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2242;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2176 = param1.readInteger();
         this.var_2244 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1676 = [];
         this.var_1677 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1676.push(param1.readInteger());
            this.var_1677.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2242 = param1.readInteger();
         this.var_2243 = param1.readInteger();
         return true;
      }
   }
}