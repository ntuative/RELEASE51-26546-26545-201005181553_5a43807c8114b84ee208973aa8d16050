package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_647:RoomObjectLocationCacheItem = null;
      
      private var var_174:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_647 = new RoomObjectLocationCacheItem(param1);
         var_174 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_647;
      }
      
      public function dispose() : void
      {
         if(var_647 != null)
         {
            var_647.dispose();
            var_647 = null;
         }
         if(var_174 != null)
         {
            var_174.dispose();
            var_174 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_174;
      }
   }
}
