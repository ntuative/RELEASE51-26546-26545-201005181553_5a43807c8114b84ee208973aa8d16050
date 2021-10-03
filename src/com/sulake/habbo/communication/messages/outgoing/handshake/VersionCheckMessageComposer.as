package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1862:String;
      
      private var var_1307:String;
      
      private var var_1863:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1863 = param1;
         var_1307 = param2;
         var_1862 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1863,var_1307,var_1862];
      }
      
      public function dispose() : void
      {
      }
   }
}
