package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1205:Array;
      
      private var var_1886:String;
      
      private var var_1885:String;
      
      private var var_1887:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1205 = param1;
         var_1886 = param2;
         var_1885 = param3;
         var_1887 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1205;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1886;
      }
      
      public function get colourAssetName() : String
      {
         return var_1885;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1887;
      }
   }
}
