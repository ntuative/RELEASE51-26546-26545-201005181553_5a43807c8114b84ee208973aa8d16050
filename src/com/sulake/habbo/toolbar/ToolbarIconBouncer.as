package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2265:Number;
      
      private var var_647:Number = 0;
      
      private var var_2264:Number;
      
      private var var_646:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2265 = param1;
         var_2264 = param2;
      }
      
      public function update() : void
      {
         var_646 += var_2264;
         var_647 += var_646;
         if(var_647 > 0)
         {
            var_647 = 0;
            var_646 = var_2265 * -1 * var_646;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_646 = param1;
         var_647 = 0;
      }
      
      public function get location() : Number
      {
         return var_647;
      }
   }
}
