package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class FurnitureFireworksVisualization extends AnimatedFurnitureVisualization
   {
       
      
      private var var_170:Boolean = false;
      
      private var _particleSystems:Dictionary;
      
      private var var_183:FurnitureParticleSystemEmitter;
      
      private var var_210:BitmapData;
      
      private var _particleSprite:IRoomObjectSprite;
      
      private var var_1388:int = -1;
      
      private var var_1389:Boolean = false;
      
      private var var_1810:int = 0;
      
      private var var_1811:int = 0;
      
      private var var_1142:Number = 1.0;
      
      public function FurnitureFireworksVisualization()
      {
         this._particleSystems = new Dictionary();
         super();
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this._particleSystems)
         {
            _loc1_.dispose();
         }
         this._particleSystems = null;
         this.var_210 = null;
         super.dispose();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(this.var_170)
         {
            if(this._particleSprite)
            {
               this.var_210.fillRect(this._particleSprite.asset.rect,4278190080);
            }
            if(this.var_183)
            {
               this.var_183.reset();
            }
            this.var_183 = this._particleSystems[param1];
            this.var_1389 = false;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateSprites(param1:int, param2:Boolean, param3:Array) : void
      {
         super.updateSprites(param1,param2,param3);
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(this._particleSprite)
         {
            if(var_350 != _loc4_.getUpdateID() || param1 != var_215)
            {
               this.var_1142 = param1 / 64;
               this.var_210 = this._particleSprite.asset.clone();
               this.var_1810 = -this._particleSprite.offsetX;
               this.var_1811 = -this._particleSprite.offsetY;
               this._particleSprite.asset = this.var_210;
            }
            if(this._particleSprite.asset != this.var_210)
            {
               this._particleSprite.asset = this.var_210;
            }
         }
         if(this.var_183)
         {
            if(!this.var_1389 && this.var_183.hasIgnited)
            {
               this.var_1389 = true;
            }
            if(this.var_1389 && this.var_183.roomObjectSprite)
            {
               this.var_183.roomObjectSprite.visible = false;
            }
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc11_:* = null;
         if(!this.var_170 && spriteCount > 0)
         {
            this.var_170 = this.readDefinition(param1);
         }
         var _loc3_:* = 0;
         var _loc9_:int = 0;
         if(this.var_183)
         {
            _loc9_ = this.var_183.offsetY * this.var_1142;
            this.var_183.update();
            if(this._particleSprite && !this.var_183.isAlive)
            {
               this.var_210.fillRect(this.var_210.rect,4278190080);
               for each(_loc11_ in this.var_183.particles)
               {
                  _loc3_ = Number(_loc11_.y);
                  _loc4_ = this.var_1810 + (_loc11_.x - _loc11_.z) * 10 / 10 * this.var_1142;
                  _loc5_ = this.var_1811 - _loc9_ + (_loc3_ + (_loc11_.x + _loc11_.z) / 2) * 10 / 10 * this.var_1142;
                  _loc7_ = _loc11_.getAsset();
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.asset.content as BitmapData;
                     this.var_210.copyPixels(_loc8_,_loc8_.rect,new Point(_loc4_ + _loc7_.offsetX,_loc5_ + _loc7_.offsetY),null,null,true);
                  }
                  else
                  {
                     _loc6_ = new Rectangle(_loc4_ - 1,_loc5_ - 1,2,2);
                     this.var_210.fillRect(_loc6_,4294967295);
                  }
               }
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         if(param1 == this.var_1388)
         {
            return 0;
         }
         if(this.var_183 && this.var_183.controlsRoomItemSprite(param1))
         {
            return this.var_183.y * this.var_1142;
         }
         return super.getSpriteYOffset(param1,param2,param3);
      }
      
      private function readDefinition(param1:Number) : Boolean
      {
         var particleSystemsData:XML = null;
         var particleSystemData:XML = null;
         var offsetY:int = 0;
         var sprite:IRoomObjectSprite = null;
         var emitterData:XML = null;
         var id:int = 0;
         var name:String = null;
         var roomObjectSpriteId:int = 0;
         var emitter:FurnitureParticleSystemEmitter = null;
         var maxNumOfParticles:int = 0;
         var particlesPerFrame:int = 0;
         var burstPulse:int = 0;
         var fuseTime:int = 0;
         var force:Number = NaN;
         var direction:Number = NaN;
         var gravity:Number = NaN;
         var airFriction:Number = NaN;
         var shape:String = null;
         var energy:Number = NaN;
         var lifeTime:int = 0;
         var isEmitter:Boolean = false;
         var frames:Array = null;
         var frameAsset:IGraphicAsset = null;
         var particleData:XML = null;
         var frameData:XML = null;
         var scale:Number = param1;
         var obj:IRoomObject = object;
         if(obj == null)
         {
            return false;
         }
         var model:IRoomObjectModel = obj.getModel();
         if(model == null)
         {
            return false;
         }
         var definitionString:String = model.getString(RoomObjectVariableEnum.const_990);
         if(definitionString.length == 0)
         {
            Logger.log("No Particle System Data Found.");
            return false;
         }
         particleSystemsData = XML(definitionString);
         particleSystemData = particleSystemsData.particlesystem.(@size == scale)[0];
         if(!particleSystemData)
         {
            return false;
         }
         if(particleSystemData.hasOwnProperty("@canvas_id"))
         {
            this.var_1388 = parseInt(particleSystemData.@canvas_id);
            this._particleSprite = getSprite(this.var_1388);
            Logger.log("Canvas: " + this.var_1388 + "  " + this._particleSprite);
            this.var_210 = this._particleSprite.asset.clone();
            Logger.log(["Offsets",this.var_210.width / 2,this.var_210.height / 2,this._particleSprite.offsetX,this._particleSprite.offsetY]);
            this.var_1810 = -this._particleSprite.offsetX;
            this.var_1811 = -this._particleSprite.offsetY;
            this._particleSprite.asset = this.var_210;
            if(this._particleSprite)
            {
               this._particleSprite.capturesMouse = false;
               this._particleSprite.visible = true;
            }
         }
         offsetY = !!particleSystemData.hasOwnProperty("@offset_y") ? int(parseInt(particleSystemData.@offset_y)) : 10;
         for each(emitterData in particleSystemData.emitter)
         {
            id = parseInt(emitterData.@id);
            name = emitterData.@name;
            roomObjectSpriteId = parseInt(emitterData.@sprite_id);
            sprite = getSprite(roomObjectSpriteId);
            emitter = new FurnitureParticleSystemEmitter(name,roomObjectSpriteId,sprite);
            this._particleSystems[id] = emitter;
            maxNumOfParticles = parseInt(emitterData.@max_num_particles);
            particlesPerFrame = parseInt(emitterData.@particles_per_frame);
            burstPulse = !!emitterData.hasOwnProperty("@burst_pulse") ? int(parseInt(emitterData.@burst_pulse)) : 1;
            fuseTime = parseInt(emitterData.@fuse_time);
            force = Number(emitterData.simulation.@force);
            direction = Number(emitterData.simulation.@direction);
            gravity = Number(emitterData.simulation.@gravity);
            airFriction = Number(emitterData.simulation.@airfriction);
            shape = emitterData.simulation.@shape;
            energy = Number(emitterData.simulation.@energy);
            for each(particleData in emitterData.particles.particle)
            {
               lifeTime = parseInt(particleData.@lifetime);
               isEmitter = particleData.@is_emitter == "false" ? false : true;
               frames = [];
               for each(frameData in particleData.frame)
               {
                  frameAsset = assetCollection.getAsset(frameData.@name);
                  frames.push(frameAsset);
               }
               emitter.configureParticle(lifeTime,isEmitter,frames);
            }
            emitter.setup(maxNumOfParticles,particlesPerFrame,force,new Vector3D(0,direction,0),gravity,airFriction,shape,energy,fuseTime,burstPulse,offsetY);
         }
         this.var_170 = true;
         return true;
      }
   }
}
