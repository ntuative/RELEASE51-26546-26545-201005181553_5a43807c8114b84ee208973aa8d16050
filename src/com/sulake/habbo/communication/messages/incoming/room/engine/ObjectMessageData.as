package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1054:int = 0;
      
      private var _data:String = "";
      
      private var var_1582:int = -1;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var var_1056:int = 0;
      
      private var var_2409:String = "";
      
      private var var_1897:int = 0;
      
      private var _id:int = 0;
      
      private var var_195:Boolean = false;
      
      private var var_242:int = 0;
      
      private var var_1898:String = null;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_195)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_242;
      }
      
      public function get extra() : int
      {
         return var_1582;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_195)
         {
            var_242 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_195)
         {
            var_84 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_195)
         {
            var_1582 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_195)
         {
            var_35 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1897;
      }
      
      public function get staticClass() : String
      {
         return var_1898;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_195)
         {
            var_1897 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_195)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_195)
         {
            var_1898 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_195)
         {
            var_1054 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_195)
         {
            var_1056 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_85 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1054;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get sizeY() : int
      {
         return var_1056;
      }
   }
}
