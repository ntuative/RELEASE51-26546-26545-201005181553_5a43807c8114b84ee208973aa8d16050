package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_950:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_950 = new Array();
         var_950.push(param1.length);
         var_950 = var_950.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_950;
      }
   }
}
