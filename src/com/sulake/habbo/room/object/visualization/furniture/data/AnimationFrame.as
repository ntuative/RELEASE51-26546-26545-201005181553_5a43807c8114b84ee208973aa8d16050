package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_587:int = -1;
      
      public static const const_837:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2235:int = -1;
      
      private var var_84:int = 0;
      
      private var var_1362:int = 1;
      
      private var var_940:int = 1;
      
      private var var_2236:Boolean = false;
      
      private var var_2234:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_2236 = param5;
         if(param4 < 0)
         {
            param4 = const_587;
         }
         var_940 = param4;
         var_1362 = param4;
         if(param6 >= 0)
         {
            var_2235 = param6;
            var_2234 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_940 > 0 && param1 > var_940)
         {
            param1 = var_940;
         }
         var_1362 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_940;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2234;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_940 < 0)
         {
            return const_587;
         }
         return var_1362;
      }
      
      public function get activeSequence() : int
      {
         return var_2235;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2236;
      }
      
      public function get x() : int
      {
         return var_84;
      }
   }
}
