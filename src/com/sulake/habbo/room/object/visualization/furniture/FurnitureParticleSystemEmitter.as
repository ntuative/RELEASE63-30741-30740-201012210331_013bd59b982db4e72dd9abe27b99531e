package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class FurnitureParticleSystemEmitter extends FurnitureParticleSystemParticle
   {
      
      public static const const_1329:String = "cone";
      
      public static const const_1350:String = "plane";
      
      public static const const_1303:String = "sphere";
       
      
      private var _name:String;
      
      private var _roomObjectSpriteId:int = -1;
      
      private var var_639:IRoomObjectSprite;
      
      private var var_1946:Number;
      
      private var _direction:Vector3D;
      
      private var var_788:Number = 0.1;
      
      private var var_1470:Number;
      
      private var var_220:Number;
      
      private var var_1947:String;
      
      private var var_1204:Array;
      
      private var var_295:Array;
      
      private var var_1205:int;
      
      private var var_1944:int;
      
      private var var_787:int;
      
      private var var_1945:int = 10;
      
      private var _energy:Number = 1;
      
      private var var_1389:Boolean = false;
      
      private var var_1948:int = 1;
      
      private var var_1097:int = 0;
      
      public function FurnitureParticleSystemEmitter(param1:String = "", param2:int = -1, param3:IRoomObjectSprite = null)
      {
         this.var_295 = [];
         super();
         this._name = param1;
         this._roomObjectSpriteId = param2;
         this.var_639 = param3;
         this.var_1204 = [];
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_295)
         {
            _loc1_.dispose();
         }
         this.var_295 = null;
         if(this.var_639)
         {
            this.var_639.offsetY = 0;
         }
         super.dispose();
      }
      
      public function setup(param1:int, param2:int, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:String, param8:Number, param9:int, param10:int, param11:int) : void
      {
         this.var_1205 = param1;
         this.var_1944 = param2;
         this.var_1946 = param3;
         this._direction = param4;
         this._direction.normalize();
         this.var_1470 = param5;
         this.var_220 = param6;
         this.var_1947 = param7;
         this.var_1945 = param9;
         this._energy = param8;
         this.var_1948 = param10;
         this.var_1097 = param11;
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_295)
         {
            _loc1_.dispose();
         }
         this.var_295 = [];
         this.var_787 = 0;
         this.var_1389 = false;
         this.init(0,0,0,this._direction,this.var_1946,this.var_788,this.var_1945,true);
         if(this.var_639)
         {
            this.var_639.offsetY = 0;
         }
      }
      
      public function configureParticle(param1:int, param2:Boolean, param3:Array) : void
      {
         var _loc4_:Dictionary = new Dictionary();
         _loc4_["lifeTime"] = param1;
         _loc4_["isEmitter"] = param2;
         _loc4_["frames"] = param3;
         this.var_1204.push(_loc4_);
      }
      
      override protected function ignite() : void
      {
         this.var_1389 = true;
         if(this.var_787 < this.var_1205)
         {
            if(this.age > 1)
            {
               this.releaseParticles(this,this.direction);
            }
         }
      }
      
      private function releaseParticles(param1:FurnitureParticleSystemParticle, param2:Vector3D = null) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc8_:* = null;
         if(!param2)
         {
            param2 = new Vector3D();
         }
         var _loc3_:Vector3D = new Vector3D();
         var _loc7_:Boolean = false;
         _loc5_ = this.getRandomParticleConfiguration();
         var _loc9_:int = 0;
         while(_loc9_ < this.var_1944)
         {
            switch(this.var_1947)
            {
               case const_1329:
                  _loc3_.x = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  _loc3_.y = -(Math.random() + 1);
                  _loc3_.z = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  break;
               case const_1350:
                  _loc3_.x = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  _loc3_.y = 0;
                  _loc3_.z = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  break;
               case const_1303:
                  _loc3_.x = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  _loc3_.y = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  _loc3_.z = !!this.randomBoolean(0.5) ? Number(Math.random()) : Number(-Math.random());
                  break;
            }
            _loc3_.normalize();
            _loc4_ = new FurnitureParticleSystemParticle();
            if(_loc5_)
            {
               _loc6_ = Math.floor(Math.random() * _loc5_["lifeTime"] + 10);
               _loc7_ = _loc5_["isEmitter"];
               _loc8_ = _loc5_["frames"];
            }
            else
            {
               _loc6_ = Math.floor(Math.random() * 20 + 10);
               _loc7_ = false;
               _loc8_ = [];
            }
            _loc4_.init(param1.x,param1.y,param1.z,_loc3_,this._energy,this.var_788,_loc6_,_loc7_,_loc8_);
            this.var_295.push(_loc4_);
            ++this.var_787;
            _loc9_++;
         }
      }
      
      private function getRandomParticleConfiguration() : Dictionary
      {
         var _loc1_:int = Math.floor(Math.random() * this.var_1204.length);
         return this.var_1204[_loc1_];
      }
      
      public function get offsetY() : int
      {
         return this.var_1097;
      }
      
      override public function update() : void
      {
         super.update();
         this.accumulateForces();
         this.verlet();
         this.satisfyConstraints();
         if(!isAlive && this.var_787 < this.var_1205)
         {
            if(this.age % this.var_1948 == 0)
            {
               this.releaseParticles(this,this.direction);
            }
         }
      }
      
      public function verlet() : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(isAlive || this.var_787 < this.var_1205)
         {
            _loc3_ = this.x;
            _loc4_ = this.y;
            _loc5_ = this.z;
            this.x = (2 - this.var_220) * this.x - (1 - this.var_220) * this.lastX;
            this.y = (2 - this.var_220) * this.y - (1 - this.var_220) * this.lastY + this.var_1470 * this.var_788 * this.var_788;
            this.z = (2 - this.var_220) * this.z - (1 - this.var_220) * this.lastZ;
            this.lastX = _loc3_;
            this.lastY = _loc4_;
            this.lastZ = _loc5_;
         }
         var _loc1_:* = [];
         for each(_loc2_ in this.var_295)
         {
            _loc2_.update();
            _loc3_ = _loc2_.x;
            _loc4_ = _loc2_.y;
            _loc5_ = _loc2_.z;
            _loc2_.x = (2 - this.var_220) * _loc2_.x - (1 - this.var_220) * _loc2_.lastX;
            _loc2_.y = (2 - this.var_220) * _loc2_.y - (1 - this.var_220) * _loc2_.lastY + this.var_1470 * this.var_788 * this.var_788;
            _loc2_.z = (2 - this.var_220) * _loc2_.z - (1 - this.var_220) * _loc2_.lastZ;
            _loc2_.lastX = _loc3_;
            _loc2_.lastY = _loc4_;
            _loc2_.lastZ = _loc5_;
            if(_loc2_.y > 10 || !_loc2_.isAlive)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.isEmitter)
            {
            }
            this.var_295.splice(this.var_295.indexOf(_loc2_),1);
            _loc2_.dispose();
         }
      }
      
      private function satisfyConstraints() : void
      {
      }
      
      private function accumulateForces() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_295)
         {
         }
      }
      
      public function controlsRoomItemSprite(param1:int) : Boolean
      {
         return this.var_639 && this._roomObjectSpriteId == param1;
      }
      
      public function get particles() : Array
      {
         return this.var_295;
      }
      
      public function get hasIgnited() : Boolean
      {
         return this.var_1389;
      }
      
      public function get roomObjectSprite() : IRoomObjectSprite
      {
         return this.var_639;
      }
      
      private function randomBoolean(param1:Number) : Boolean
      {
         return Math.random() < param1;
      }
   }
}
