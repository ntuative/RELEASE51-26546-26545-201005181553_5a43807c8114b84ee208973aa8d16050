package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_833:String = "AssetLoaderEventUnload";
      
      public static const const_51:String = "AssetLoaderEventError";
      
      public static const const_828:String = "AssetLoaderEventOpen";
      
      public static const const_858:String = "AssetLoaderEventProgress";
      
      public static const const_1009:String = "AssetLoaderEventStatus";
      
      public static const const_36:String = "AssetLoaderEventComplete";
       
      
      private var var_169:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_169 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_169;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_169);
      }
   }
}
