package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_78:String = "i";
      
      public static const const_84:String = "s";
      
      public static const const_253:String = "e";
       
      
      private var var_1541:String;
      
      private var var_2557:int;
      
      private var var_1237:String;
      
      private var var_1238:int;
      
      private var var_1544:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1541 = param1.readString();
         this.var_2557 = param1.readInteger();
         this.var_1237 = param1.readString();
         this.var_1238 = param1.readInteger();
         this.var_1544 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1541;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2557;
      }
      
      public function get extraParam() : String
      {
         return this.var_1237;
      }
      
      public function get productCount() : int
      {
         return this.var_1238;
      }
      
      public function get expiration() : int
      {
         return this.var_1544;
      }
   }
}
