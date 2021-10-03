package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1095:int = -1;
      
      private static const const_778:int = 20;
      
      private static const const_512:int = 9;
       
      
      private var var_639:Boolean = false;
      
      private var var_226:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_226 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_639 = true;
            var_226 = new Array();
            var_226.push(const_1095);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_639)
            {
               var_639 = false;
               var_226 = new Array();
               var_226.push(const_778);
               var_226.push(const_512 + param1);
               var_226.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
         {
            if(false)
            {
               super.setAnimation(var_226.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
