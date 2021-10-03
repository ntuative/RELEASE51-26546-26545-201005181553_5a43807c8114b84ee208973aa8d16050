package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1727:Date;
      
      private var var_1171:Boolean = false;
      
      private var _type:int;
      
      private var var_386:BitmapData;
      
      private var var_254:Boolean = false;
      
      private var var_1222:int;
      
      private var var_584:int = 1;
      
      private var var_1002:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_386;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_584;
         if(var_584 < 0)
         {
            var_584 = 0;
         }
         var_1002 = var_1222;
         var_254 = false;
         var_1171 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1002 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_254;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_386 = param1;
      }
      
      public function get duration() : int
      {
         return var_1222;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1171;
      }
      
      public function get effectsInInventory() : int
      {
         return var_584;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_386;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_254)
         {
            var_1727 = new Date();
         }
         var_254 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_584 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_254)
         {
            _loc1_ = var_1002 - (new Date().valueOf() - var_1727.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1002;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1171 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1222 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
