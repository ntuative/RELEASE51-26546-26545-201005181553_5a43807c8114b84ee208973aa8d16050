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
       
      
      private var var_391:FloorRasterizer;
      
      private var var_799:Boolean = false;
      
      private var var_566:PlaneMaskManager;
      
      private var var_392:WallRasterizer;
      
      private var var_567:WallAdRasterizer;
      
      private var var_393:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_392 = new WallRasterizer();
         var_391 = new FloorRasterizer();
         var_567 = new WallAdRasterizer();
         var_393 = new LandscapeRasterizer();
         var_566 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_392;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_567;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_391;
      }
      
      public function get initialized() : Boolean
      {
         return var_799;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_566;
      }
      
      public function dispose() : void
      {
         if(var_392 != null)
         {
            var_392.dispose();
            var_392 = null;
         }
         if(var_391 != null)
         {
            var_391.dispose();
            var_391 = null;
         }
         if(var_567 != null)
         {
            var_567.dispose();
            var_567 = null;
         }
         if(var_393 != null)
         {
            var_393.dispose();
            var_393 = null;
         }
         if(var_566 != null)
         {
            var_566.dispose();
            var_566 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_392.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_391.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_567.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_393.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_566.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_392 != null)
         {
            var_392.clearCache();
         }
         if(var_391 != null)
         {
            var_391.clearCache();
         }
         if(var_393 != null)
         {
            var_393.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_393;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_799)
         {
            return;
         }
         var_392.initializeAssetCollection(param1);
         var_391.initializeAssetCollection(param1);
         var_567.initializeAssetCollection(param1);
         var_393.initializeAssetCollection(param1);
         var_566.initializeAssetCollection(param1);
         var_799 = true;
      }
   }
}
