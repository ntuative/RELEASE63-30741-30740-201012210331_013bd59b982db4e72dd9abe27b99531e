package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_855:String = "avatar";
      
      private static const const_552:Number = -0.01;
      
      private static const const_553:Number = -0.409;
      
      private static const const_856:int = 2;
      
      private static const const_1201:Array = [0,0,0];
      
      private static const const_1202:int = 3;
       
      
      private var var_578:AvatarVisualizationData = null;
      
      private var var_465:Map;
      
      private var var_463:Map;
      
      private var var_1070:int = 0;
      
      private var var_872:Boolean;
      
      private var var_546:String;
      
      private var var_812:String;
      
      private var var_1069:int = 0;
      
      private var var_576:BitmapDataAsset;
      
      private var var_855:BitmapDataAsset;
      
      private var var_1663:int = -1;
      
      private var var_1660:int = -1;
      
      private var var_1664:int = -1;
      
      private const const_854:int = 0;
      
      private const const_1558:int = 1;
      
      private const const_1555:int = 2;
      
      private const const_1556:int = 3;
      
      private const const_1203:int = 4;
      
      private var var_1557:int = -1;
      
      private var var_230:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1658:Boolean = false;
      
      private var var_1661:Boolean = false;
      
      private var var_1665:Boolean = false;
      
      private var var_1319:Boolean = false;
      
      private var var_558:Boolean = false;
      
      private var var_1320:int = 0;
      
      private var var_1318:int = 0;
      
      private var var_2052:int = 0;
      
      private var var_690:int = 0;
      
      private var var_691:int = 0;
      
      private var var_577:int = 0;
      
      private var var_1321:int = 0;
      
      private var var_1061:Boolean = false;
      
      private var var_1662:Boolean = false;
      
      private var var_1062:int = 0;
      
      private var var_689:int = 0;
      
      private var var_1659:Boolean = false;
      
      private var var_1063:int = 0;
      
      private var var_55:IAvatarImage = null;
      
      private var var_679:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_465 = new Map();
         this.var_463 = new Map();
         this.var_872 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_465 != null)
         {
            this.resetImages();
            this.var_465.dispose();
            this.var_463.dispose();
            this.var_465 = null;
         }
         this.var_578 = null;
         this.var_576 = null;
         this.var_855 = null;
         super.dispose();
         this.var_679 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_679;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_578 = param1 as AvatarVisualizationData;
         createSprites(this.const_1203);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_214)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_235) > 0 && param3);
            if(_loc5_ != this.var_1658)
            {
               this.var_1658 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_219) > 0;
            if(_loc5_ != this.var_1661)
            {
               this.var_1661 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_489) > 0;
            if(_loc5_ != this.var_1665)
            {
               this.var_1665 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_788) > 0 && param3);
            if(_loc5_ != this.var_1319)
            {
               this.var_1319 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1051) > 0;
            if(_loc5_ != this.var_558)
            {
               this.var_558 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_281);
            if(_loc6_ != this.var_1320)
            {
               this.var_1320 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_425);
            if(_loc7_ != this.var_230)
            {
               this.var_230 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_809);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1074);
            if(_loc6_ != this.var_1318)
            {
               this.var_1318 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_465);
            if(_loc6_ != this.var_690)
            {
               this.var_690 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_505);
            if(_loc6_ != this.var_691)
            {
               this.var_691 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_333);
            if(_loc6_ != this.var_577)
            {
               this.var_577 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_379);
            if(_loc6_ != this.var_1663)
            {
               this.var_1663 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_691 > 0 && param1.getNumber(RoomObjectVariableEnum.const_333) > 0)
            {
               if(this.var_577 != this.var_691)
               {
                  this.var_577 = this.var_691;
                  _loc4_ = true;
               }
            }
            else if(this.var_577 != 0)
            {
               this.var_577 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_776);
            if(_loc6_ != this.var_1062)
            {
               this.var_1062 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1101);
            if(_loc7_ != this.var_812)
            {
               this.var_812 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_175);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_214 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_546 != param1)
         {
            this.var_546 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_465)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_463)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_465.reset();
         this.var_463.reset();
         this.var_55 = null;
         _loc2_ = getSprite(this.const_854);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1319 = false;
         }
         if(this.var_230 == "sit" || this.var_230 == "lay")
         {
            this.var_1321 = param1 / 2;
         }
         else
         {
            this.var_1321 = 0;
         }
         this.var_1662 = false;
         this.var_1061 = false;
         if(this.var_230 == "lay")
         {
            this.var_1061 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1662 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_465.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_463.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_578.getAvatar(this.var_546,param1,this.var_812,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_465.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_463.length >= const_1202)
                  {
                     this.var_463.remove(this.var_463.getKeys().shift());
                  }
                  this.var_463.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_350 != param1.getUpdateID() || this.var_1557 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1663;
            if(this.var_230 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1660 || param4)
            {
               _loc5_ = true;
               this.var_1660 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_55.setDirectionAngle(AvatarSetType.const_32,_loc6_);
            }
            if(_loc7_ != this.var_1664 || param4)
            {
               _loc5_ = true;
               this.var_1664 = _loc7_;
               if(this.var_1664 != this.var_1660)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_55.setDirectionAngle(AvatarSetType.const_42,_loc7_);
               }
            }
            var_350 = param1.getUpdateID();
            this.var_1557 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1558);
         this.var_576 = null;
         if(this.var_230 == "mv" || this.var_230 == "std")
         {
            _loc2_.visible = true;
            if(this.var_576 == null || param1 != var_215)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_576 = this.var_55.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_576 = this.var_55.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_576 != null)
               {
                  _loc2_.asset = this.var_576.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_576 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_855 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1555);
         if(this.var_558)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_855 = this.var_578.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_855 = this.var_578.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_230 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_230 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_855 != null)
            {
               _loc2_.asset = this.var_855.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1556);
         if(this.var_1062 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_578.getAvatarRendererAsset("number_" + this.var_1062 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_578.getAvatarRendererAsset("number_" + this.var_1062 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_230 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_230 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_689 = 1;
               this.var_1659 = true;
               this.var_1063 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_689 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1556);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1659)
         {
            ++this.var_1063;
            if(this.var_1063 < 10)
            {
               return false;
            }
            if(this.var_689 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1063 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_689 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_689 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_689 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_689 = 0;
               this.var_1659 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_578 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_690;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_215 || this.var_55 == null)
         {
            if(_loc6_ != var_215)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_690)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_55 == null || _loc11_)
            {
               this.var_55 = this.getAvatarImage(_loc6_,this.var_690);
               if(this.var_55 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_854);
               if(_loc15_ && this.var_55 && this.var_55.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_55 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_55);
            var_215 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_872 || this.var_1069 > 0) && param3;
         if(_loc13_)
         {
            this.var_1069 = const_856;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1069;
            --this.var_1070;
            if(!(this.var_1070 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_55.updateAnimationByFrames(1);
            this.var_1070 = const_856;
            _loc17_ = this.var_55.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1201;
            }
            _loc16_ = getSprite(this.const_854);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_55.getImage(AvatarSetType.const_32,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1321;
               }
               if(this.var_1061)
               {
                  if(this.var_1662)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_553 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_552 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1555);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1061)
               {
                  _loc16_.relativeDepth = const_552 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_553 - 0.01 + _loc17_[2];
               }
            }
            this.var_872 = this.var_55.isAnimating();
            _loc18_ = this.const_1203;
            for each(_loc19_ in this.var_55.getSprites())
            {
               if(_loc19_.id == const_855)
               {
                  _loc16_ = getSprite(this.const_854);
                  _loc21_ = this.var_55.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_55.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_55.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_55.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_55.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_55.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_55.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_55.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_55.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_55.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1321;
                     if(this.var_1061)
                     {
                        _loc16_.relativeDepth = const_553 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_552 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_341,this.var_230,this._postureParameter);
         if(this.var_1320 > 0)
         {
            param1.appendAction(AvatarAction.const_277,AvatarAction.const_1321[this.var_1320]);
         }
         if(this.var_1318 > 0)
         {
            param1.appendAction(AvatarAction.const_705,this.var_1318);
         }
         if(this.var_2052 > 0)
         {
            param1.appendAction(AvatarAction.const_684,this.var_2052);
         }
         if(this.var_691 > 0)
         {
            param1.appendAction(AvatarAction.const_669,this.var_691);
         }
         if(this.var_577 > 0)
         {
            param1.appendAction(AvatarAction.const_816,this.var_577);
         }
         if(this.var_1658)
         {
            param1.appendAction(AvatarAction.const_299);
         }
         if(this.var_1665 || this.var_1319)
         {
            param1.appendAction(AvatarAction.const_496);
         }
         if(this.var_1661)
         {
            param1.appendAction(AvatarAction.const_230);
         }
         if(this.var_690 > 0)
         {
            param1.appendAction(AvatarAction.const_279,this.var_690);
         }
         param1.endActionAppends();
         this.var_872 = param1.isAnimating();
         var _loc2_:int = this.const_1203;
         for each(_loc3_ in this.var_55.getSprites())
         {
            if(_loc3_.id != const_855)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
