package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_1931:String;
      
      private var var_1447:String;
      
      private var var_1932:String;
      
      private var var_1446:Boolean;
      
      private var var_1448:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_1931 = String(param1["set-type"]);
         this.var_1447 = String(param1["flipped-set-type"]);
         this.var_1932 = String(param1["remove-set-type"]);
         this.var_1446 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1448 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1448;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1448 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_1931;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1447;
      }
      
      public function get removeSetType() : String
      {
         return this.var_1932;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1446;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1446 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1447 = param1;
      }
   }
}
