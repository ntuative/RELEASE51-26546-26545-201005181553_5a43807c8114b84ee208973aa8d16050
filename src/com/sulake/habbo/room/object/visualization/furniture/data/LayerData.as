package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_475:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_403:int = 0;
      
      public static const const_971:int = 2;
      
      public static const const_876:int = 1;
      
      public static const const_603:Boolean = false;
      
      public static const const_646:String = "";
      
      public static const const_372:int = 0;
      
      public static const const_430:int = 0;
      
      public static const const_408:int = 0;
       
      
      private var var_1787:int = 0;
      
      private var var_1783:String = "";
      
      private var var_1545:int = 0;
      
      private var var_1785:int = 0;
      
      private var var_1782:Number = 0;
      
      private var var_1786:int = 255;
      
      private var var_1784:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1787;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1545 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1782;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1787 = param1;
      }
      
      public function get tag() : String
      {
         return var_1783;
      }
      
      public function get alpha() : int
      {
         return var_1786;
      }
      
      public function get ink() : int
      {
         return var_1545;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1782 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1785;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1784 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1784;
      }
      
      public function set tag(param1:String) : void
      {
         var_1783 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1786 = param1;
      }
   }
}
