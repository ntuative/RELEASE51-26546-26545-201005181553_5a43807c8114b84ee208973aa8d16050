package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2366:Boolean;
      
      private var var_2368:int;
      
      private var var_2367:Boolean;
      
      private var var_1539:String;
      
      private var var_1313:String;
      
      private var var_1670:int;
      
      private var var_2050:String;
      
      private var var_2369:String;
      
      private var var_2051:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1670 = param1.readInteger();
         this.var_1539 = param1.readString();
         this.var_2050 = param1.readString();
         this.var_2366 = param1.readBoolean();
         this.var_2367 = param1.readBoolean();
         param1.readString();
         this.var_2368 = param1.readInteger();
         this.var_2051 = param1.readString();
         this.var_2369 = param1.readString();
         this.var_1313 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1313;
      }
      
      public function get avatarName() : String
      {
         return this.var_1539;
      }
      
      public function get avatarId() : int
      {
         return this.var_1670;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2366;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2369;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2051;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2367;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2050;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2368;
      }
   }
}
