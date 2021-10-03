package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2317:String;
      
      private var var_2318:Class;
      
      private var var_2319:Class;
      
      private var var_1704:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2317 = param1;
         this.var_2318 = param2;
         this.var_2319 = param3;
         if(rest == null)
         {
            this.var_1704 = new Array();
         }
         else
         {
            this.var_1704 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2317;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2318;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2319;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1704;
      }
   }
}
