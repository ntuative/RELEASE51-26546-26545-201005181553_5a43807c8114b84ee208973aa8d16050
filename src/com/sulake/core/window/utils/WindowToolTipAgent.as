package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_333:Timer;
      
      protected var var_967:String;
      
      protected var var_968:uint;
      
      protected var var_1131:Point;
      
      protected var var_247:IToolTipWindow;
      
      protected var var_1132:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1131 = new Point();
         var_1132 = new Point(20,20);
         var_968 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_333 != null)
         {
            var_333.stop();
            var_333.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_333 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1131);
            if(var_247 != null && true)
            {
               var_247.x = param1 + var_1132.x;
               var_247.y = param2 + var_1132.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_333 != null)
         {
            var_333.reset();
         }
         if(_window && true)
         {
            if(var_247 == null || false)
            {
               var_247 = _window.context.create("undefined::ToolTip",var_967,WindowType.const_310,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_247.x = _loc2_.x + var_1131.x + var_1132.x;
            var_247.y = _loc2_.y + var_1131.y + var_1132.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_967 = IInteractiveWindow(param1).toolTipCaption;
               var_968 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_967 = param1.caption;
               var_968 = 500;
            }
            _mouse.x = var_122.mouseX;
            _mouse.y = var_122.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1131);
            if(var_967 != null && var_967 != "")
            {
               if(var_333 == null)
               {
                  var_333 = new Timer(var_968,1);
                  var_333.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_333.reset();
               var_333.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_247 != null && true)
         {
            var_247.destroy();
            var_247 = null;
         }
      }
   }
}
