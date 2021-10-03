package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var var_1330:String;
      
      private var var_160:String;
      
      private var var_2209:String;
      
      private var var_1689:String;
      
      private var _color:IPartColor;
      
      private var _frames:Array;
      
      private var _action:IActionDefinition;
      
      private var var_1306:Boolean;
      
      private var _isBlendable:Boolean;
      
      private var var_2210:ColorTransform;
      
      private var var_1960:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:String, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         this.var_1330 = param1;
         this.var_160 = param2;
         this.var_1689 = param3;
         this._color = param4;
         this._frames = param5;
         this._action = param6;
         this.var_1306 = param7;
         this.var_1960 = param8;
         this.var_2209 = param9;
         this._isBlendable = param10;
         this.var_2210 = new ColorTransform(1,1,1,param11);
         if(this._frames == null)
         {
            Logger.log("Null frame list");
         }
         if(this.var_160 == "ey")
         {
            this.var_1306 = false;
         }
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return this._frames[param1 % this._frames.length];
      }
      
      public function get frames() : Array
      {
         return this._frames;
      }
      
      public function get bodyPartId() : String
      {
         return this.var_1330;
      }
      
      public function get partType() : String
      {
         return this.var_160;
      }
      
      public function get partId() : String
      {
         return this.var_1689;
      }
      
      public function get color() : IPartColor
      {
         return this._color;
      }
      
      public function get action() : IActionDefinition
      {
         return this._action;
      }
      
      public function set isColorable(param1:Boolean) : void
      {
         this.var_1306 = param1;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1306;
      }
      
      public function get paletteMapId() : int
      {
         return this.var_1960;
      }
      
      public function get flippedPartType() : String
      {
         return this.var_2209;
      }
      
      public function get isBlendable() : Boolean
      {
         return this._isBlendable;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return this.var_2210;
      }
   }
}
