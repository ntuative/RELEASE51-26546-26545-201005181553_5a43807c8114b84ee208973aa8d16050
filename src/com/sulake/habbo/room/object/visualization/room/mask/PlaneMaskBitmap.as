package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_53:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1871:Number = -1;
      
      private var var_951:IGraphicAsset = null;
      
      private var var_1873:Number = 1;
      
      private var var_1872:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1871 = param2;
         _normalMaxX = param3;
         var_1872 = param4;
         var_1873 = param5;
         var_951 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1873;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1871;
      }
      
      public function get normalMinY() : Number
      {
         return var_1872;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_951;
      }
      
      public function dispose() : void
      {
         var_951 = null;
      }
   }
}
