package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1227:int = 2;
      
      public static const const_1672:int = 1;
       
      
      private var var_2279:int;
      
      private var var_2278:int;
      
      private var var_2047:Boolean;
      
      private var var_2277:int;
      
      private var var_1159:String;
      
      private var var_2276:Boolean;
      
      private var var_2157:int;
      
      private var var_2275:int;
      
      private var var_2159:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2278;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2047;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2275;
      }
      
      public function get memberPeriods() : int
      {
         return var_2277;
      }
      
      public function get productName() : String
      {
         return var_1159;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2276;
      }
      
      public function get responseType() : int
      {
         return var_2279;
      }
      
      public function get pastClubDays() : int
      {
         return var_2159;
      }
      
      public function get pastVipDays() : int
      {
         return var_2157;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1159 = param1.readString();
         var_2278 = param1.readInteger();
         var_2277 = param1.readInteger();
         var_2275 = param1.readInteger();
         var_2279 = param1.readInteger();
         var_2276 = param1.readBoolean();
         var_2047 = param1.readBoolean();
         var_2159 = param1.readInteger();
         var_2157 = param1.readInteger();
         return true;
      }
   }
}
