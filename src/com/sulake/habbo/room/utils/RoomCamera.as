package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_366:Number = 0.5;
      
      private static const const_809:int = 3;
      
      private static const const_1146:Number = 1;
       
      
      private var var_2171:Boolean = false;
      
      private var var_2166:Boolean = false;
      
      private var var_1100:int = 0;
      
      private var var_277:Vector3d = null;
      
      private var var_2172:int = 0;
      
      private var var_2169:int = 0;
      
      private var var_2175:Boolean = false;
      
      private var var_2168:int = -2;
      
      private var var_2174:Boolean = false;
      
      private var var_2170:int = 0;
      
      private var var_2173:int = -1;
      
      private var var_445:Vector3d = null;
      
      private var var_2167:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2172;
      }
      
      public function get targetId() : int
      {
         return var_2173;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2170 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2172 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2171 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2173 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2166 = param1;
      }
      
      public function dispose() : void
      {
         var_445 = null;
         var_277 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_445 == null)
         {
            var_445 = new Vector3d();
         }
         var_445.assign(param1);
         var_1100 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2168;
      }
      
      public function get screenHt() : int
      {
         return var_2167;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2169 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_277;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2167 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2170;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2171;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2166;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_445 != null && var_277 != null)
         {
            ++var_1100;
            _loc2_ = Vector3d.dif(var_445,var_277);
            if(_loc2_.length <= const_366)
            {
               var_277 = var_445;
               var_445 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_366 * (const_809 + 1))
               {
                  _loc2_.mul(const_366);
               }
               else if(var_1100 <= const_809)
               {
                  _loc2_.mul(const_366);
               }
               else
               {
                  _loc2_.mul(const_1146);
               }
               var_277 = Vector3d.sum(var_277,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2175 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2169;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2174 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2168 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_277 != null)
         {
            return;
         }
         var_277 = new Vector3d();
         var_277.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2175;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2174;
      }
   }
}
