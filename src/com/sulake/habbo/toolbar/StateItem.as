package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1284:Boolean;
      
      private var var_1960:String;
      
      private var _frames:XMLList;
      
      private var var_1082:String = "-1";
      
      private var var_658:String;
      
      private var var_170:int = 120;
      
      private var var_1261:String = "-1";
      
      private var var_1262:String;
      
      private var var_1961:Boolean;
      
      private var var_1517:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1284 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1961 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_170 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1262 = param1.@namebase;
         }
         else
         {
            var_1262 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1082 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1261 = param1.@nextState;
         }
         else
         {
            var_1261 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1517 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1960 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_658 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1082 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1961;
      }
      
      public function get defaultState() : String
      {
         return var_1517;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1517 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1960;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_170;
      }
      
      public function get loop() : Boolean
      {
         return var_1284;
      }
      
      public function get nextState() : String
      {
         return var_1261;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_658;
      }
      
      public function get stateOver() : String
      {
         return var_1082;
      }
      
      public function get nameBase() : String
      {
         return var_1262;
      }
   }
}
