package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2216:Boolean;
      
      private var var_1647:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2216 = Boolean(parseInt(param1.@club));
         var_1647 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2216;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1647;
      }
   }
}
