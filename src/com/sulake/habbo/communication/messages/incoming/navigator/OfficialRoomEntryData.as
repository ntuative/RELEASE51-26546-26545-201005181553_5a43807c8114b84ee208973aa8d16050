package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1427:int = 4;
      
      public static const const_642:int = 3;
      
      public static const const_537:int = 2;
      
      public static const const_827:int = 1;
       
      
      private var var_1892:String;
      
      private var _disposed:Boolean;
      
      private var var_1894:int;
      
      private var var_1891:Boolean;
      
      private var var_911:String;
      
      private var var_856:PublicRoomData;
      
      private var var_1893:int;
      
      private var _index:int;
      
      private var var_1889:String;
      
      private var _type:int;
      
      private var var_1783:String;
      
      private var var_855:GuestRoomData;
      
      private var var_1890:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1892 = param1.readString();
         var_1890 = param1.readString();
         var_1891 = param1.readInteger() == 1;
         var_1889 = param1.readString();
         var_911 = param1.readString();
         var_1893 = param1.readInteger();
         var_1894 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_827)
         {
            var_1783 = param1.readString();
         }
         else if(_type == const_642)
         {
            var_856 = new PublicRoomData(param1);
         }
         else if(_type == const_537)
         {
            var_855 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1893;
      }
      
      public function get popupCaption() : String
      {
         return var_1892;
      }
      
      public function get userCount() : int
      {
         return var_1894;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1891;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_827)
         {
            return 0;
         }
         if(this.type == const_537)
         {
            return this.var_855.maxUserCount;
         }
         if(this.type == const_642)
         {
            return this.var_856.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1890;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_855 != null)
         {
            this.var_855.dispose();
            this.var_855 = null;
         }
         if(this.var_856 != null)
         {
            this.var_856.dispose();
            this.var_856 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_855;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1889;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_856;
      }
      
      public function get picRef() : String
      {
         return var_911;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1783;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
