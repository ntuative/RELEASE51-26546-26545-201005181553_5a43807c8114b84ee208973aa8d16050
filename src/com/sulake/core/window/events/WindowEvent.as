package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_253:String = "WE_CHILD_RESIZED";
      
      public static const const_1253:String = "WE_CLOSE";
      
      public static const const_1408:String = "WE_DESTROY";
      
      public static const const_141:String = "WE_CHANGE";
      
      public static const const_1390:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1513:String = "WE_PARENT_RESIZE";
      
      public static const const_97:String = "WE_UPDATE";
      
      public static const const_1226:String = "WE_MAXIMIZE";
      
      public static const const_434:String = "WE_DESTROYED";
      
      public static const const_822:String = "WE_UNSELECT";
      
      public static const const_1252:String = "WE_MAXIMIZED";
      
      public static const const_1613:String = "WE_UNLOCKED";
      
      public static const const_449:String = "WE_CHILD_REMOVED";
      
      public static const const_192:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1380:String = "WE_ACTIVATE";
      
      public static const const_263:String = "WE_ENABLED";
      
      public static const const_486:String = "WE_CHILD_RELOCATED";
      
      public static const const_1274:String = "WE_CREATE";
      
      public static const const_674:String = "WE_SELECT";
      
      public static const const_167:String = "";
      
      public static const const_1477:String = "WE_LOCKED";
      
      public static const const_1517:String = "WE_PARENT_RELOCATE";
      
      public static const const_1526:String = "WE_CHILD_REMOVE";
      
      public static const const_1659:String = "WE_CHILD_RELOCATE";
      
      public static const const_1607:String = "WE_LOCK";
      
      public static const const_213:String = "WE_FOCUSED";
      
      public static const const_690:String = "WE_UNSELECTED";
      
      public static const const_865:String = "WE_DEACTIVATED";
      
      public static const const_1364:String = "WE_MINIMIZED";
      
      public static const const_1570:String = "WE_ARRANGED";
      
      public static const const_1573:String = "WE_UNLOCK";
      
      public static const const_1603:String = "WE_ATTACH";
      
      public static const const_1326:String = "WE_OPEN";
      
      public static const const_1246:String = "WE_RESTORE";
      
      public static const const_1702:String = "WE_PARENT_RELOCATED";
      
      public static const const_1245:String = "WE_RELOCATE";
      
      public static const const_1491:String = "WE_CHILD_RESIZE";
      
      public static const const_1578:String = "WE_ARRANGE";
      
      public static const const_1374:String = "WE_OPENED";
      
      public static const const_1208:String = "WE_CLOSED";
      
      public static const const_1656:String = "WE_DETACHED";
      
      public static const const_1580:String = "WE_UPDATED";
      
      public static const const_1419:String = "WE_UNFOCUSED";
      
      public static const const_467:String = "WE_RELOCATED";
      
      public static const const_1212:String = "WE_DEACTIVATE";
      
      public static const const_208:String = "WE_DISABLED";
      
      public static const const_571:String = "WE_CANCEL";
      
      public static const const_697:String = "WE_ENABLE";
      
      public static const const_1269:String = "WE_ACTIVATED";
      
      public static const const_1285:String = "WE_FOCUS";
      
      public static const const_1556:String = "WE_DETACH";
      
      public static const const_1251:String = "WE_RESTORED";
      
      public static const const_1329:String = "WE_UNFOCUS";
      
      public static const const_64:String = "WE_SELECTED";
      
      public static const const_1351:String = "WE_PARENT_RESIZED";
      
      public static const const_1280:String = "WE_CREATED";
      
      public static const const_1686:String = "WE_ATTACHED";
      
      public static const const_1344:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1638:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1415:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1638 = param3;
         var_1415 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1415;
      }
      
      public function get related() : IWindow
      {
         return var_1638;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1415 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
