package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1102:int = 80;
       
      
      private var var_505:Map;
      
      private var var_705:String = "";
      
      private var var_1219:Array;
      
      public function UserRegistry()
      {
         var_505 = new Map();
         var_1219 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_505.getValue(var_1219.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_705;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_505.getValue(param1) != null)
         {
            var_505.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_705);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_705 == "")
         {
            var_1219.push(param1);
         }
         var_505.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_505;
      }
      
      public function unregisterRoom() : void
      {
         var_705 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_505.length > const_1102)
         {
            _loc1_ = var_505.getKey(0);
            var_505.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_705 = param1;
         if(var_705 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
