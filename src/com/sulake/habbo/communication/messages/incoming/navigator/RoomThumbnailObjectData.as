package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1515:int;
      
      private var var_1514:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1515;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1515 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1515 = this.var_1515;
         _loc1_.var_1514 = this.var_1514;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1514 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1514;
      }
   }
}
