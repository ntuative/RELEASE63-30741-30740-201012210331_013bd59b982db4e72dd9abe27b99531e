package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2172:int;
      
      private var var_1271:String;
      
      private var var_2564:int;
      
      private var var_2562:int;
      
      private var _category:int;
      
      private var var_1889:String;
      
      private var var_1340:int;
      
      private var var_2566:int;
      
      private var var_2563:int;
      
      private var var_2568:int;
      
      private var var_2567:int;
      
      private var var_2565:Boolean;
      
      private var var_2715:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2172 = param1;
         this.var_1271 = param2;
         this.var_2564 = param3;
         this.var_2562 = param4;
         this._category = param5;
         this.var_1889 = param6;
         this.var_1340 = param7;
         this.var_2566 = param8;
         this.var_2563 = param9;
         this.var_2568 = param10;
         this.var_2567 = param11;
         this.var_2565 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2172;
      }
      
      public function get itemType() : String
      {
         return this.var_1271;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2564;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2562;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1889;
      }
      
      public function get extra() : int
      {
         return this.var_1340;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2566;
      }
      
      public function get creationDay() : int
      {
         return this.var_2563;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2568;
      }
      
      public function get creationYear() : int
      {
         return this.var_2567;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2565;
      }
      
      public function get songID() : int
      {
         return this.var_1340;
      }
   }
}
