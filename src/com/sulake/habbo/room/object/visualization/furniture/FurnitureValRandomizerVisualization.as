package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1103:int = 31;
      
      private static const const_1095:int = 32;
      
      private static const const_513:int = 30;
      
      private static const const_778:int = 20;
      
      private static const const_512:int = 10;
       
      
      private var var_639:Boolean = false;
      
      private var var_226:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_226 = new Array();
         super();
         super.setAnimation(const_513);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_639 = true;
            var_226 = new Array();
            var_226.push(const_1103);
            var_226.push(const_1095);
            return;
         }
         if(param1 > 0 && param1 <= const_512)
         {
            if(var_639)
            {
               var_639 = false;
               var_226 = new Array();
               if(_direction == 2)
               {
                  var_226.push(const_778 + 5 - param1);
                  var_226.push(const_512 + 5 - param1);
               }
               else
               {
                  var_226.push(const_778 + param1);
                  var_226.push(const_512 + param1);
               }
               var_226.push(const_513);
               return;
            }
            super.setAnimation(const_513);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
