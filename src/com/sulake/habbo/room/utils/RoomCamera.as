package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_861:int = 3;
       
      
      private var var_2273:int = -1;
      
      private var var_2272:int = -2;
      
      private var var_321:Vector3d = null;
      
      private var var_381:Vector3d = null;
      
      private var var_2275:Boolean = false;
      
      private var var_2271:Boolean = false;
      
      private var var_2274:Boolean = false;
      
      private var var_2278:Boolean = false;
      
      private var var_2276:int = 0;
      
      private var var_2269:int = 0;
      
      private var var_2277:int = 0;
      
      private var var_2270:int = 0;
      
      private var var_1333:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_381;
      }
      
      public function get targetId() : int
      {
         return this.var_2273;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2272;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2275;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2271;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2274;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2278;
      }
      
      public function get screenWd() : int
      {
         return this.var_2276;
      }
      
      public function get screenHt() : int
      {
         return this.var_2269;
      }
      
      public function get roomWd() : int
      {
         return this.var_2277;
      }
      
      public function get roomHt() : int
      {
         return this.var_2270;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2273 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2272 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2275 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2271 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2274 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2278 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2276 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2269 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2277 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2270 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_321 == null)
         {
            this.var_321 = new Vector3d();
         }
         if(this.var_321.x != param1.x || this.var_321.y != param1.y || this.var_321.z != param1.z)
         {
            this.var_321.assign(param1);
            this.var_1333 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_321 = null;
         this.var_381 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_381 != null)
         {
            return;
         }
         this.var_381 = new Vector3d();
         this.var_381.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_321 != null && this.var_381 != null)
         {
            ++this.var_1333;
            _loc4_ = Vector3d.dif(this.var_321,this.var_381);
            if(_loc4_.length <= param2)
            {
               this.var_381 = this.var_321;
               this.var_321 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_861 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1333 <= const_861)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_381 = Vector3d.sum(this.var_381,_loc4_);
            }
         }
      }
   }
}
