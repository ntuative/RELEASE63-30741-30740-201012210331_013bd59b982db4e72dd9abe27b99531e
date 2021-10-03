package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_489:WallRasterizer;
      
      private var var_488:FloorRasterizer;
      
      private var var_731:WallAdRasterizer;
      
      private var var_490:LandscapeRasterizer;
      
      private var var_732:PlaneMaskManager;
      
      private var var_735:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_489 = new WallRasterizer();
         this.var_488 = new FloorRasterizer();
         this.var_731 = new WallAdRasterizer();
         this.var_490 = new LandscapeRasterizer();
         this.var_732 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_735;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_488;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_489;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_731;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_490;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_732;
      }
      
      public function dispose() : void
      {
         if(this.var_489 != null)
         {
            this.var_489.dispose();
            this.var_489 = null;
         }
         if(this.var_488 != null)
         {
            this.var_488.dispose();
            this.var_488 = null;
         }
         if(this.var_731 != null)
         {
            this.var_731.dispose();
            this.var_731 = null;
         }
         if(this.var_490 != null)
         {
            this.var_490.dispose();
            this.var_490 = null;
         }
         if(this.var_732 != null)
         {
            this.var_732.dispose();
            this.var_732 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_489 != null)
         {
            this.var_489.clearCache();
         }
         if(this.var_488 != null)
         {
            this.var_488.clearCache();
         }
         if(this.var_490 != null)
         {
            this.var_490.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_489.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_488.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_731.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_490.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_732.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_735)
         {
            return;
         }
         this.var_489.initializeAssetCollection(param1);
         this.var_488.initializeAssetCollection(param1);
         this.var_731.initializeAssetCollection(param1);
         this.var_490.initializeAssetCollection(param1);
         this.var_732.initializeAssetCollection(param1);
         this.var_735 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
