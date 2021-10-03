package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1771:int;
      
      private var var_299:String;
      
      private var var_1659:int;
      
      private var var_1712:int;
      
      private var var_1773:int;
      
      private var var_2256:int;
      
      private var _nutrition:int;
      
      private var var_1332:int;
      
      private var var_2255:int;
      
      private var var_2257:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1769:int;
      
      private var var_2254:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1659;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2256;
      }
      
      public function flush() : Boolean
      {
         var_1332 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2255;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2257;
      }
      
      public function get maxNutrition() : int
      {
         return var_2254;
      }
      
      public function get figure() : String
      {
         return var_299;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1712;
      }
      
      public function get petId() : int
      {
         return var_1332;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1332 = param1.readInteger();
         _name = param1.readString();
         var_1659 = param1.readInteger();
         var_2255 = param1.readInteger();
         var_1773 = param1.readInteger();
         var_2257 = param1.readInteger();
         _energy = param1.readInteger();
         var_2256 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2254 = param1.readInteger();
         var_299 = param1.readString();
         var_1712 = param1.readInteger();
         var_1769 = param1.readInteger();
         var_1771 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1773;
      }
      
      public function get ownerId() : int
      {
         return var_1769;
      }
      
      public function get age() : int
      {
         return var_1771;
      }
   }
}
