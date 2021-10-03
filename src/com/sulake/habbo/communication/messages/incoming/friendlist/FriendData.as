package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_299:String;
      
      private var var_1314:String;
      
      private var var_1312:String;
      
      private var var_1229:int;
      
      private var var_623:int;
      
      private var var_1313:String;
      
      private var _name:String;
      
      private var var_1176:Boolean;
      
      private var var_741:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_623 = param1.readInteger();
         this.var_741 = param1.readBoolean();
         this.var_1176 = param1.readBoolean();
         this.var_299 = param1.readString();
         this.var_1229 = param1.readInteger();
         this.var_1312 = param1.readString();
         this.var_1314 = param1.readString();
         this.var_1313 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_623;
      }
      
      public function get realName() : String
      {
         return var_1313;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1312;
      }
      
      public function get categoryId() : int
      {
         return var_1229;
      }
      
      public function get online() : Boolean
      {
         return var_741;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1176;
      }
      
      public function get lastAccess() : String
      {
         return var_1314;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_299;
      }
   }
}
