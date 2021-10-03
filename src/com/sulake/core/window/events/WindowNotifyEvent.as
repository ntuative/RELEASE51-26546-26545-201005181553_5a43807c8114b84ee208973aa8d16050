package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1205:String = "WN_CREATED";
      
      public static const const_940:String = "WN_DISABLE";
      
      public static const const_862:String = "WN_DEACTIVATED";
      
      public static const const_873:String = "WN_OPENED";
      
      public static const const_1028:String = "WN_CLOSED";
      
      public static const const_1017:String = "WN_DESTROY";
      
      public static const const_1499:String = "WN_ARRANGED";
      
      public static const const_468:String = "WN_PARENT_RESIZED";
      
      public static const const_909:String = "WN_ENABLE";
      
      public static const const_885:String = "WN_RELOCATE";
      
      public static const const_1040:String = "WN_FOCUS";
      
      public static const const_851:String = "WN_PARENT_RELOCATED";
      
      public static const const_476:String = "WN_PARAM_UPDATED";
      
      public static const const_583:String = "WN_PARENT_ACTIVATED";
      
      public static const const_174:String = "WN_RESIZED";
      
      public static const const_919:String = "WN_CLOSE";
      
      public static const const_982:String = "WN_PARENT_REMOVED";
      
      public static const const_275:String = "WN_CHILD_RELOCATED";
      
      public static const const_586:String = "WN_ENABLED";
      
      public static const const_287:String = "WN_CHILD_RESIZED";
      
      public static const const_1021:String = "WN_MINIMIZED";
      
      public static const const_581:String = "WN_DISABLED";
      
      public static const const_223:String = "WN_CHILD_ACTIVATED";
      
      public static const const_452:String = "WN_STATE_UPDATED";
      
      public static const const_575:String = "WN_UNSELECTED";
      
      public static const const_438:String = "WN_STYLE_UPDATED";
      
      public static const const_1571:String = "WN_UPDATE";
      
      public static const const_479:String = "WN_PARENT_ADDED";
      
      public static const const_683:String = "WN_RESIZE";
      
      public static const const_644:String = "WN_CHILD_REMOVED";
      
      public static const const_1488:String = "";
      
      public static const const_928:String = "WN_RESTORED";
      
      public static const const_356:String = "WN_SELECTED";
      
      public static const const_910:String = "WN_MINIMIZE";
      
      public static const const_1048:String = "WN_FOCUSED";
      
      public static const const_1265:String = "WN_LOCK";
      
      public static const const_325:String = "WN_CHILD_ADDED";
      
      public static const const_931:String = "WN_UNFOCUSED";
      
      public static const const_446:String = "WN_RELOCATED";
      
      public static const const_884:String = "WN_DEACTIVATE";
      
      public static const const_1236:String = "WN_CRETAE";
      
      public static const const_993:String = "WN_RESTORE";
      
      public static const const_297:String = "WN_ACTVATED";
      
      public static const const_1209:String = "WN_LOCKED";
      
      public static const const_480:String = "WN_SELECT";
      
      public static const const_972:String = "WN_MAXIMIZE";
      
      public static const const_1018:String = "WN_OPEN";
      
      public static const const_529:String = "WN_UNSELECT";
      
      public static const const_1504:String = "WN_ARRANGE";
      
      public static const const_1277:String = "WN_UNLOCKED";
      
      public static const const_1525:String = "WN_UPDATED";
      
      public static const const_915:String = "WN_ACTIVATE";
      
      public static const const_1407:String = "WN_UNLOCK";
      
      public static const const_913:String = "WN_MAXIMIZED";
      
      public static const const_826:String = "WN_DESTROYED";
      
      public static const const_1037:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1638,cancelable);
      }
   }
}
