package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1389:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_953:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1389 = param1;
         var_953 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_953;
      }
      
      public function get identifier() : IID
      {
         return var_1389;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1389 = null;
            while(false)
            {
               var_953.pop();
            }
            var_953 = null;
         }
      }
   }
}
