package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2342:uint;
      
      private var var_849:IWindowToolTipAgentService;
      
      private var var_845:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_847:IWindowFocusManagerService;
      
      private var var_846:IWindowMouseListenerService;
      
      private var var_848:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2342 = 0;
         var_122 = param2;
         _windowContext = param1;
         var_848 = new WindowMouseDragger(param2);
         var_845 = new WindowMouseScaler(param2);
         var_846 = new WindowMouseListener(param2);
         var_847 = new FocusManager(param2);
         var_849 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_845;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_847;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_849;
      }
      
      public function dispose() : void
      {
         if(var_848 != null)
         {
            var_848.dispose();
            var_848 = null;
         }
         if(var_845 != null)
         {
            var_845.dispose();
            var_845 = null;
         }
         if(var_846 != null)
         {
            var_846.dispose();
            var_846 = null;
         }
         if(var_847 != null)
         {
            var_847.dispose();
            var_847 = null;
         }
         if(var_849 != null)
         {
            var_849.dispose();
            var_849 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_846;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_848;
      }
   }
}
