package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1714:Number = 0;
      
      private var var_1715:Number = 0;
      
      private var var_1713:Number = 0;
      
      private var var_1716:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1715 = param1;
         var_1713 = param2;
         var_1714 = param3;
         var_1716 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1715;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1714;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1713;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1716;
      }
   }
}
