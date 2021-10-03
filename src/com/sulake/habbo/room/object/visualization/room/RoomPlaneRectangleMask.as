package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2454:Number = 0.0;
      
      private var var_2455:Number = 0.0;
      
      private var var_2505:Number = 0.0;
      
      private var var_2504:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2454 = param1;
         this.var_2455 = param2;
         this.var_2505 = param3;
         this.var_2504 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2454;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2455;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2505;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2504;
      }
   }
}
