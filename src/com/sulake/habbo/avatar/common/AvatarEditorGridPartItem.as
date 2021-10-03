package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboIconType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarEditorGridPartItem
   {
      
      private static var var_66:Array = [];
      
      {
         var_66.push("li");
         var_66.push("lh");
         var_66.push("ls");
         var_66.push("lc");
         var_66.push("bd");
         var_66.push("sh");
         var_66.push("lg");
         var_66.push("ch");
         var_66.push("ca");
         var_66.push("cc");
         var_66.push("wa");
         var_66.push("rh");
         var_66.push("rs");
         var_66.push("rc");
         var_66.push("hd");
         var_66.push("fc");
         var_66.push("ey");
         var_66.push("hr");
         var_66.push("hrb");
         var_66.push("fa");
         var_66.push("ea");
         var_66.push("ha");
         var_66.push("he");
         var_66.push("ri");
      }
      
      private const const_1707:int = 16777215;
      
      private var _isSelected:Boolean = false;
      
      private const const_1708:int = 13421772;
      
      private var var_457:Rectangle;
      
      private var _colors:Array;
      
      private var _window:IWindowContainer;
      
      private var var_1614:Boolean;
      
      private var var_386:BitmapData;
      
      private var _model:IAvatarEditorCategoryModel;
      
      private var var_645:IFigurePartSet;
      
      private var var_1615:int = 0;
      
      public function AvatarEditorGridPartItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IFigurePartSet, param4:Array, param5:Boolean = true)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _model = param2;
         var_645 = param3;
         _window = param1;
         _colors = param4;
         var_1614 = param5;
         if(param3 == null)
         {
            var_386 = new BitmapData(1,1,true,16777215);
         }
         if(param3 != null)
         {
            _loc7_ = param3.parts;
            for each(_loc6_ in _loc7_)
            {
               var_1615 = Math.max(var_1615,_loc6_.colorLayerIndex);
            }
         }
         updateThumbVisualization();
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
         updateThumbVisualization();
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_386 = param1;
         updateThumbVisualization();
      }
      
      public function get colorLayerCount() : int
      {
         return var_1615;
      }
      
      private function sortByDrawOrder(param1:IFigurePart, param2:IFigurePart) : Number
      {
         var _loc3_:Number = var_66.indexOf(param1.type);
         var _loc4_:Number = var_66.indexOf(param2.type);
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.index < param2.index)
         {
            return -1;
         }
         if(param1.index > param2.index)
         {
            return 1;
         }
         return 0;
      }
      
      private function updateThumbVisualization() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("bitmap") as IBitmapWrapperWindow;
         if(_loc1_)
         {
            if(var_386 != null && !var_1614)
            {
               _loc3_ = var_386;
            }
            else
            {
               _loc3_ = renderThumb();
               if(!_loc3_)
               {
                  return;
               }
            }
            _loc4_ = !!_loc1_.bitmap ? _loc1_.bitmap : new BitmapData(_loc1_.width,_loc1_.height);
            _loc4_.fillRect(_loc4_.rect,16777215);
            _loc5_ = (_loc4_.width - _loc3_.width) / 2;
            _loc6_ = (_loc4_.height - _loc3_.height) / 2;
            _loc4_.copyPixels(_loc3_,_loc3_.rect,new Point(_loc5_,_loc6_),null,null,true);
            _loc1_.bitmap = _loc4_;
         }
         var _loc2_:IIconWindow = _window.findChildByTag("CLUB_ICON") as IIconWindow;
         if(_loc2_)
         {
            if(var_645)
            {
               switch(var_645.clubLevel)
               {
                  case HabboClubLevelEnum.const_52:
                     _loc2_.visible = false;
                     break;
                  case HabboClubLevelEnum.const_62:
                     _loc2_.style = HabboIconType.const_645;
                     break;
                  case HabboClubLevelEnum.const_55:
                     _loc2_.style = HabboIconType.const_705;
               }
            }
            else
            {
               _loc2_.visible = false;
            }
         }
         if(isSelected)
         {
            _window.color = const_1708;
         }
         else
         {
            _window.color = const_1707;
         }
         _window.invalidate();
      }
      
      private function analyzePartLayers() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_model == null)
         {
            var_457 = null;
            return false;
         }
         if(!partSet || true || partSet.parts.length == 0)
         {
            var_457 = null;
            return false;
         }
         var _loc5_:Rectangle = new Rectangle();
         for each(_loc1_ in partSet.parts)
         {
            _loc2_ = "undefined_undefined_" + _loc1_.type + "_" + _loc1_.id + "_" + FigureData.const_908 + "_" + FigureData.const_248;
            _loc3_ = _model.controller.avatarRenderManager.getAssetByName(_loc2_) as BitmapDataAsset;
            if(_loc3_ != null)
            {
               _loc4_ = (_loc3_.content as BitmapData).clone();
               _loc5_ = _loc5_.union(new Rectangle(-1 * _loc3_.offset.x,-1 * _loc3_.offset.y,_loc4_.width,_loc4_.height));
            }
         }
         if(_loc5_ && _loc5_.width > 0)
         {
            var_457 = _loc5_;
            return true;
         }
         return false;
      }
      
      public function get id() : int
      {
         if(var_645 == null)
         {
            return -1;
         }
         return var_645.id;
      }
      
      public function dispose() : void
      {
         _model = null;
         var_645 = null;
         if(_window != null)
         {
            if(true)
            {
               _window.dispose();
            }
         }
         _window = null;
         if(var_386)
         {
            var_386.dispose();
         }
         var_386 = null;
      }
      
      public function update() : void
      {
         updateThumbVisualization();
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      public function set colors(param1:Array) : void
      {
         _colors = param1;
         updateThumbVisualization();
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get partSet() : IFigurePartSet
      {
         return var_645;
      }
      
      private function renderThumb() : BitmapData
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         if(partSet == null)
         {
            return null;
         }
         if(_model == null)
         {
            return null;
         }
         if(var_457 == null)
         {
            if(!analyzePartLayers())
            {
               return null;
            }
         }
         _loc1_ = new BitmapData(var_457.width,var_457.height,true,16777215);
         var _loc6_:Array = partSet.parts.concat().sort(sortByDrawOrder);
         for each(_loc2_ in _loc6_)
         {
            _loc3_ = "undefined_undefined_" + _loc2_.type + "_" + _loc2_.id + "_" + FigureData.const_908 + "_" + FigureData.const_248;
            _loc4_ = _model.controller.avatarRenderManager.getAssetByName(_loc3_) as BitmapDataAsset;
            if(_loc4_ != null)
            {
               _loc5_ = (_loc4_.content as BitmapData).clone();
               _loc7_ = -1 * _loc4_.offset.x - 0;
               _loc8_ = -1 * _loc4_.offset.y - 0;
               if(var_1614 && _loc2_.colorLayerIndex > 0)
               {
                  _loc9_ = _colors[_loc2_.colorLayerIndex - 1];
                  if(_loc9_ != null)
                  {
                     _loc5_.colorTransform(_loc5_.rect,_loc9_.colorTransform);
                  }
               }
               _loc1_.copyPixels(_loc5_,_loc5_.rect,new Point(_loc7_,_loc8_),null,null,true);
            }
            else
            {
               Logger.log("Could not find asset: " + _loc3_);
            }
         }
         return _loc1_;
      }
   }
}
