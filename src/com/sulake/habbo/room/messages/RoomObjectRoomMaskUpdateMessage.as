package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1346:String = "door";
      
      public static const const_414:String = "window";
      
      public static const const_710:String = "RORMUM_ADD_MASK";
      
      public static const const_465:String = "RORMUM_ADD_MASK";
      
      public static const const_241:String = "hole";
       
      
      private var var_1851:String = "";
      
      private var var_1850:String = "";
      
      private var var_1852:String = "window";
      
      private var var_1853:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_1850 = param2;
         var_1851 = param3;
         if(param4 != null)
         {
            var_1853 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_1852 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_1852;
      }
      
      public function get maskId() : String
      {
         return var_1850;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_1853;
      }
      
      public function get maskType() : String
      {
         return var_1851;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
