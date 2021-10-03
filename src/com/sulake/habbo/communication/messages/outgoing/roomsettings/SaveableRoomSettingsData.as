package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1707:int;
      
      private var var_1709:int;
      
      private var var_1708:Boolean;
      
      private var var_1706:Boolean;
      
      private var var_1705:Array;
      
      private var var_1710:Boolean;
      
      private var var_1229:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_659:Array;
      
      private var var_1224:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1709;
      }
      
      public function get description() : String
      {
         return var_1224;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1706;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1707;
      }
      
      public function set description(param1:String) : void
      {
         var_1224 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1710 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1707 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1229;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1705;
      }
      
      public function get tags() : Array
      {
         return var_659;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1710;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1708 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_659 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1705 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1229 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1708;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1706 = param1;
      }
   }
}
