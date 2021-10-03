package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_595:int = 6;
      
      public static const const_238:int = 5;
      
      public static const const_721:int = 2;
      
      public static const const_329:int = 9;
      
      public static const const_349:int = 4;
      
      public static const const_250:int = 2;
      
      public static const const_735:int = 4;
      
      public static const const_246:int = 8;
      
      public static const const_698:int = 7;
      
      public static const const_264:int = 3;
      
      public static const const_296:int = 1;
      
      public static const const_212:int = 5;
      
      public static const const_461:int = 12;
      
      public static const const_345:int = 1;
      
      public static const const_540:int = 11;
      
      public static const const_613:int = 3;
      
      public static const const_1531:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_429:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_429 = new Array();
         var_429.push(new Tab(_navigator,const_296,const_461,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_422));
         var_429.push(new Tab(_navigator,const_250,const_345,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_422));
         var_429.push(new Tab(_navigator,const_349,const_540,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_879));
         var_429.push(new Tab(_navigator,const_264,const_238,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_422));
         var_429.push(new Tab(_navigator,const_212,const_246,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_653));
         setSelectedTab(const_296);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_429)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_429)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_429)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_349;
      }
      
      public function get tabs() : Array
      {
         return var_429;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
