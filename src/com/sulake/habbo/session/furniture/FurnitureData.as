package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1514:String = "e";
      
      public static const const_1653:String = "i";
      
      public static const const_1544:String = "s";
       
      
      private var _id:int;
      
      private var var_2270:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2268:int;
      
      private var var_1205:Array;
      
      private var var_2273:int;
      
      private var var_2269:int;
      
      private var var_2272:int;
      
      private var _name:String;
      
      private var var_2271:int;
      
      private var var_1224:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2268 = param4;
         var_2271 = param5;
         var_2273 = param6;
         var_2269 = param7;
         var_2272 = param8;
         var_1205 = param9;
         _title = param10;
         var_1224 = param11;
         var_2270 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_2269;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2272;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_2270;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2271;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2268;
      }
      
      public function get tileSizeX() : int
      {
         return var_2273;
      }
      
      public function get colours() : Array
      {
         return var_1205;
      }
      
      public function get description() : String
      {
         return var_1224;
      }
   }
}
