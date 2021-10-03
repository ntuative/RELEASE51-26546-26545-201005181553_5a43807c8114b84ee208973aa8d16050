package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_255:uint = 1;
      
      public static const const_424:uint = 0;
      
      public static const const_836:uint = 8;
      
      public static const const_282:uint = 4;
      
      public static const const_435:uint = 2;
       
      
      private var var_419:uint;
      
      private var var_2005:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2006:uint;
      
      private var var_100:Rectangle;
      
      private var var_659:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_100 = param3;
         _color = param4;
         var_419 = param5;
         var_2005 = param6;
         var_2006 = param7;
         var_659 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2005;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_419;
      }
      
      public function get scaleV() : uint
      {
         return var_2006;
      }
      
      public function get tags() : Array
      {
         return var_659;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_100 = null;
         var_659 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_100;
      }
   }
}
