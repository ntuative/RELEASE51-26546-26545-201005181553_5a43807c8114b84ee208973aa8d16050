package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_677:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_677 = new ByteArray();
         var_677.writeShort(param1);
         var_677.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_677.position = 0;
         if(false)
         {
            _loc1_ = var_677.readShort();
            var_677.position = 0;
         }
         return _loc1_;
      }
   }
}
