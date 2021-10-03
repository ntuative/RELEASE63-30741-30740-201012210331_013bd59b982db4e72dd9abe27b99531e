package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_839:int = 20;
      
      private static const const_547:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_264:Array;
      
      private var var_729:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_264 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_729)
            {
               this.var_729 = true;
               this.var_264 = new Array();
               this.var_264.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_729)
            {
               this.var_729 = false;
               this.var_264 = new Array();
               this.var_264.push(const_839);
               this.var_264.push(const_547 + param1);
               this.var_264.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_264.length > 0)
            {
               super.setAnimation(this.var_264.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
