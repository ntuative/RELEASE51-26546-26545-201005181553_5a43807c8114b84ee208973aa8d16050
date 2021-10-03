package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var var_1600:uint;
      
      private var _rgb:uint;
      
      private var var_2258:int;
      
      private var var_1604:Number;
      
      private var _b:uint;
      
      private var var_1602:Number;
      
      private var var_1603:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1601:Number;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         _rgb = parseInt(_loc2_,16);
         var_1600 = _rgb >> 16 & 255;
         var_1603 = _rgb >> 8 & 255;
         _b = _rgb >> 0 & 255;
         var_1601 = var_1600 / 255 * 1;
         var_1602 = var_1603 / 255 * 1;
         var_1604 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1601,var_1602,var_1604);
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         var_2258 = param1;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return _rgb;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return var_2258;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get g() : uint
      {
         return var_1603;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get r() : uint
      {
         return var_1600;
      }
   }
}
