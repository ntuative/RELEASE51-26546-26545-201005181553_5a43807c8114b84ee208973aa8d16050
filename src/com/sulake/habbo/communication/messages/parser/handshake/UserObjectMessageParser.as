package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_299:String;
      
      private var var_2352:String;
      
      private var var_2350:int;
      
      private var var_2349:int;
      
      private var var_643:String;
      
      private var var_1313:String;
      
      private var _name:String;
      
      private var var_474:int;
      
      private var var_809:int;
      
      private var var_2348:int;
      
      private var _respectTotal:int;
      
      private var var_2351:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2349;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1313;
      }
      
      public function get customData() : String
      {
         return this.var_2352;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_474;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2350;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2351;
      }
      
      public function get figure() : String
      {
         return this.var_299;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_643;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_299 = param1.readString();
         this.var_643 = param1.readString();
         this.var_2352 = param1.readString();
         this.var_1313 = param1.readString();
         this.var_2348 = param1.readInteger();
         this.var_2351 = param1.readString();
         this.var_2350 = param1.readInteger();
         this.var_2349 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_809 = param1.readInteger();
         this.var_474 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2348;
      }
      
      public function get respectLeft() : int
      {
         return this.var_809;
      }
   }
}
