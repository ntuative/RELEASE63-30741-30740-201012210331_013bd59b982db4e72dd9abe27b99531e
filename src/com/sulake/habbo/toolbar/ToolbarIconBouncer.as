package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2532:Number;
      
      private var var_1470:Number;
      
      private var var_905:Number;
      
      private var var_904:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2532 = param1;
         this.var_1470 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_905 = param1;
         this.var_904 = 0;
      }
      
      public function update() : void
      {
         this.var_905 += this.var_1470;
         this.var_904 += this.var_905;
         if(this.var_904 > 0)
         {
            this.var_904 = 0;
            this.var_905 = this.var_2532 * -1 * this.var_905;
         }
      }
      
      public function get location() : Number
      {
         return this.var_904;
      }
   }
}
