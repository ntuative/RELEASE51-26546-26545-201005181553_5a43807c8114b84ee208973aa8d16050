package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_438:uint;
      
      private var var_1077:IUnknown;
      
      private var var_1306:String;
      
      private var var_1076:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1076 = param1;
         var_1306 = getQualifiedClassName(var_1076);
         var_1077 = param2;
         var_438 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1076;
      }
      
      public function get disposed() : Boolean
      {
         return var_1077 == null;
      }
      
      public function get references() : uint
      {
         return var_438;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_438) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1077;
      }
      
      public function get iis() : String
      {
         return var_1306;
      }
      
      public function reserve() : uint
      {
         return ++var_438;
      }
      
      public function dispose() : void
      {
         var_1076 = null;
         var_1306 = null;
         var_1077 = null;
         var_438 = 0;
      }
   }
}
