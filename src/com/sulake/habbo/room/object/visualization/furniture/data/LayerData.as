package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_717:String = "";
      
      public static const const_457:int = 0;
      
      public static const const_417:int = 255;
      
      public static const const_679:Boolean = false;
      
      public static const const_493:int = 0;
      
      public static const const_498:int = 0;
      
      public static const const_497:int = 0;
      
      public static const const_1043:int = 1;
      
      public static const const_899:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2006:String = "";
      
      private var var_1577:int = 0;
      
      private var var_1934:int = 255;
      
      private var var_2424:Boolean = false;
      
      private var var_2422:int = 0;
      
      private var var_2421:int = 0;
      
      private var var_2423:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2006 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2006;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1577 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1577;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1934 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1934;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2424 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2424;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2422 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2422;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2421 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2421;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2423 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2423;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
