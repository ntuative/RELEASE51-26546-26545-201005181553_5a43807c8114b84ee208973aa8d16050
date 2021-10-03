package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_963:MouseEventQueue;
      
      public static var var_1631:IMouseCursor;
      
      public static const const_1685:int = 2;
      
      private static var var_988:Factory;
      
      private static var var_136:IWindowRenderer;
      
      public static var var_1403:KeyboardEventQueue;
      
      public static const const_1545:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1619:int = 0;
      
      public static const const_1575:int = 3;
      
      public static const const_1179:int = 4;
       
      
      protected var var_2302:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_671:WindowController;
      
      private var var_689:Date;
      
      protected var var_2303:IWindowParser;
      
      protected var var_964:Error;
      
      protected var var_2304:IInternalWindowServices;
      
      protected var var_97:WindowController;
      
      protected var var_1409:int = -1;
      
      protected var var_90:IDesktopWindow;
      
      private var var_1433:Boolean = false;
      
      protected var var_2396:Boolean = true;
      
      private var var_189:Boolean = false;
      
      protected var var_1128:SubstituteParentController;
      
      private var var_2330:Point;
      
      protected var var_330:DisplayObjectContainer;
      
      private var var_354:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_577:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_577 = new Point();
         var_2330 = new Point();
         super();
         _name = param1;
         var_136 = param2;
         _localization = param4;
         var_330 = param5;
         var_2304 = new InternalWindowServices(this,param5);
         var_2302 = param3;
         var_2303 = new WindowParser(this);
         var_689 = new Date();
         if(var_988 == null)
         {
            var_988 = new Factory();
         }
         if(var_963 == null)
         {
            var_963 = new MouseEventQueue(param5);
         }
         if(var_1403 == null)
         {
            var_1403 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_90 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_330.addChild(var_90.getDisplayObject());
         var_330.doubleClickEnabled = true;
         var_330.addEventListener(Event.RESIZE,stageResizedHandler);
         var_97 = WindowController(var_90);
         var_1128 = new SubstituteParentController(this);
         var_354 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_90)
         {
            var_90 = null;
         }
         if(param1.state != WindowState.const_447)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_988.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1179,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1128;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_90,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_90;
      }
      
      public function render(param1:uint) : void
      {
         var_1433 = true;
         var_136.update(param1);
         var_1433 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_330.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_330.removeChild(IGraphicContextHost(var_90).getGraphicContext(true) as DisplayObject);
         var_90.destroy();
         var_90 = null;
         var_1128.destroy();
         var_1128 = null;
         var_988 = null;
         var_136 = null;
         var_97 = null;
         var_689 = null;
         var_354 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_90 != null && true)
         {
            if(var_330 is Stage)
            {
               var_90.width = Stage(var_330).stageWidth;
               var_90.height = Stage(var_330).stageHeight;
            }
            else
            {
               var_90.width = var_330.width;
               var_90.height = var_330.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_136.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2303;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2302;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_189 = true;
         if(var_964)
         {
            throw var_964;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_963;
         _loc7_.begin();
         var_577.x = -1;
         var_577.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_577.x || _loc2_.stageY != var_577.y)
            {
               var_577.x = _loc2_.stageX;
               var_577.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_90.groupChildrenUnderPoint(var_577,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_97 != var_90 && true)
                  {
                     var_97.getGlobalPosition(_loc6_);
                     var_97.update(var_97,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_97 = WindowController(var_90);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_97)
                     {
                        if(true)
                        {
                           var_97.getGlobalPosition(_loc6_);
                           var_97.update(var_97,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_97 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_97 && true)
                     {
                        if(var_354 != null)
                        {
                           var_354.mouseEventReceived(_loc2_.type,var_97);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_97)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_90)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_189 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_964 = param2;
         var_1409 = param1;
         if(var_2396)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_964;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1631 == null)
         {
            var_1631 = new MouseCursorControl(var_330);
         }
         return var_1631;
      }
      
      public function flushError() : void
      {
         var_964 = null;
         var_1409 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1409;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_49))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_75))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_136.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_454))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_671 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_671 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_671 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_671 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_671 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_90.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2304;
      }
   }
}
