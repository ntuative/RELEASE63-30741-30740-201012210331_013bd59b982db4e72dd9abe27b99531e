package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2176:int;
      
      private var var_2244:int;
      
      private var var_2241:int;
      
      private var _dayOffsets:Array;
      
      private var var_1676:Array;
      
      private var var_1677:Array;
      
      private var var_2243:int;
      
      private var var_2242:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2176 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2244 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1676 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1677 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2243 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2242 = param1;
      }
   }
}
