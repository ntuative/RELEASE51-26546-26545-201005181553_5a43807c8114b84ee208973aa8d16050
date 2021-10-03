package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1066:int = 0;
      
      private var var_1181:int = 0;
      
      private var var_1754:String = "";
      
      private var var_1065:int = 0;
      
      private var var_1755:String = "";
      
      private var var_1757:int = 0;
      
      private var var_1543:String = "";
      
      private var var_1751:int = 0;
      
      private var var_1753:int = 0;
      
      private var var_1752:String = "";
      
      private var var_1756:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1751 = param1;
         var_1752 = param2;
         var_1543 = param3;
         var_1754 = param4;
         var_1755 = param5;
         if(param6)
         {
            var_1181 = 1;
         }
         else
         {
            var_1181 = 0;
         }
         var_1757 = param7;
         var_1753 = param8;
         var_1065 = param9;
         var_1756 = param10;
         var_1066 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1751,var_1752,var_1543,var_1754,var_1755,var_1181,var_1757,var_1753,var_1065,var_1756,var_1066];
      }
      
      public function dispose() : void
      {
      }
   }
}
