package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2090:int;
      
      private var var_2088:int;
      
      private var var_2087:int;
      
      private var _userName:String;
      
      private var var_2091:int;
      
      private var var_2092:int;
      
      private var var_2089:int;
      
      private var _userId:int;
      
      private var var_741:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2092 = param1.readInteger();
         var_2091 = param1.readInteger();
         var_741 = param1.readBoolean();
         var_2087 = param1.readInteger();
         var_2088 = param1.readInteger();
         var_2090 = param1.readInteger();
         var_2089 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2089;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_741;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2091;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2088;
      }
      
      public function get cautionCount() : int
      {
         return var_2090;
      }
      
      public function get cfhCount() : int
      {
         return var_2087;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2092;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
