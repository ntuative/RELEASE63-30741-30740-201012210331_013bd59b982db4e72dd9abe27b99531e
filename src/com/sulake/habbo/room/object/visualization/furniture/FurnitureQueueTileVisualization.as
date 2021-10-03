package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1179:int = 2;
      
      private static const const_1178:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_264:Array;
      
      private var var_1018:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_264 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1179)
         {
            this.var_264 = new Array();
            this.var_264.push(const_1178);
            this.var_1018 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1018 > 0)
         {
            --this.var_1018;
         }
         if(this.var_1018 == 0)
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
