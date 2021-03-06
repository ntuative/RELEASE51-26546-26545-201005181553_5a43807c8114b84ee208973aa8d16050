package com.sulake.habbo.avatar.structure.figure
{
   public class FigurePartSet implements IFigurePartSet
   {
       
      
      private var var_623:String;
      
      private var var_171:Array;
      
      private var var_1099:Array;
      
      private var var_1794:int;
      
      private var _id:int;
      
      private var var_1838:Boolean;
      
      private var var_1647:Boolean;
      
      public function FigurePartSet(param1:XML)
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         super();
         _id = parseInt(param1.@id);
         var_623 = String(param1.@gender);
         var_1794 = parseInt(param1.@club);
         var_1838 = Boolean(parseInt(param1.@colorable));
         var_1647 = Boolean(parseInt(param1.@selectable));
         var_171 = new Array();
         var_1099 = new Array();
         for each(_loc2_ in param1.part)
         {
            _loc4_ = new FigurePart(_loc2_);
            _loc5_ = indexOfPartType(_loc4_);
            if(_loc5_ != -1)
            {
               var_171.splice(_loc5_,0,_loc4_);
            }
            else
            {
               var_171.push(_loc4_);
            }
         }
         for each(_loc3_ in param1.hiddenlayers.layer)
         {
            var_1099.push(String(_loc3_.@parttype));
         }
      }
      
      public function get gender() : String
      {
         return var_623;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1838;
      }
      
      public function get hiddenLayers() : Array
      {
         return var_1099;
      }
      
      public function get parts() : Array
      {
         return var_171;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_171)
         {
            _loc1_.dispose();
         }
         var_171 = null;
         var_1099 = null;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1647;
      }
      
      public function getPart(param1:String, param2:int) : IFigurePart
      {
         var _loc3_:* = null;
         for each(_loc3_ in var_171)
         {
            if(_loc3_.type == param1 && _loc3_.id == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function get clubLevel() : int
      {
         return var_1794;
      }
      
      private function indexOfPartType(param1:FigurePart) : int
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < var_171.length)
         {
            _loc3_ = var_171[_loc2_];
            if(_loc3_.type == param1.type && _loc3_.index < param1.index)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
   }
}
