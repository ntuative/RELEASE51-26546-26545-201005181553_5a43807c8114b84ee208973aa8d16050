package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1894:int;
      
      private var var_1977:String;
      
      private var var_1976:int;
      
      private var var_1973:int;
      
      private var var_713:Boolean;
      
      private var var_1710:Boolean;
      
      private var var_421:int;
      
      private var var_1224:String;
      
      private var var_1709:int;
      
      private var var_1229:int;
      
      private var _ownerName:String;
      
      private var var_705:String;
      
      private var var_1974:int;
      
      private var var_1975:RoomThumbnailData;
      
      private var var_1978:Boolean;
      
      private var var_659:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_659 = new Array();
         super();
         var_421 = param1.readInteger();
         var_713 = param1.readBoolean();
         var_705 = param1.readString();
         _ownerName = param1.readString();
         var_1709 = param1.readInteger();
         var_1894 = param1.readInteger();
         var_1974 = param1.readInteger();
         var_1224 = param1.readString();
         var_1976 = param1.readInteger();
         var_1978 = param1.readBoolean();
         var_1973 = param1.readInteger();
         var_1229 = param1.readInteger();
         var_1977 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_659.push(_loc4_);
            _loc3_++;
         }
         var_1975 = new RoomThumbnailData(param1);
         var_1710 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1974;
      }
      
      public function get roomName() : String
      {
         return var_705;
      }
      
      public function get userCount() : int
      {
         return var_1894;
      }
      
      public function get score() : int
      {
         return var_1973;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1977;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1978;
      }
      
      public function get tags() : Array
      {
         return var_659;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1710;
      }
      
      public function get event() : Boolean
      {
         return var_713;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_659 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1229;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1976;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1975;
      }
      
      public function get doorMode() : int
      {
         return var_1709;
      }
      
      public function get flatId() : int
      {
         return var_421;
      }
      
      public function get description() : String
      {
         return var_1224;
      }
   }
}
