package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_468:int = -2.147483648E9;
      
      private var var_469:int = 2.147483647E9;
      
      private var var_466:int = -2.147483648E9;
      
      private var var_467:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_468;
      }
      
      public function get maxWidth() : int
      {
         return this.var_469;
      }
      
      public function get minHeight() : int
      {
         return this.var_466;
      }
      
      public function get maxHeight() : int
      {
         return this.var_467;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_468 = param1;
         if(this.var_468 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_468)
         {
            this._target.width = this.var_468;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_469 = param1;
         if(this.var_469 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_469)
         {
            this._target.width = this.var_469;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_466 = param1;
         if(this.var_466 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_466)
         {
            this._target.height = this.var_466;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_467 = param1;
         if(this.var_467 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_467)
         {
            this._target.height = this.var_467;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_468 == int.MIN_VALUE && this.var_469 == int.MAX_VALUE && this.var_466 == int.MIN_VALUE && this.var_467 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_468 = int.MIN_VALUE;
         this.var_469 = int.MAX_VALUE;
         this.var_466 = int.MIN_VALUE;
         this.var_467 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_468 = this.var_468;
         _loc2_.var_469 = this.var_469;
         _loc2_.var_466 = this.var_466;
         _loc2_.var_467 = this.var_467;
         return _loc2_;
      }
   }
}
