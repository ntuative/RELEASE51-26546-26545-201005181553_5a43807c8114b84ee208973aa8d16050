package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_993:SoundChannel = null;
      
      private var var_814:Boolean;
      
      private var var_992:Sound = null;
      
      private var var_682:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_992 = param1;
         var_992.addEventListener(Event.COMPLETE,onComplete);
         var_682 = 1;
         var_814 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_814;
      }
      
      public function stop() : Boolean
      {
         var_993.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_814 = false;
         var_993 = var_992.play(0);
         this.volume = var_682;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_682;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_993.position;
      }
      
      public function get length() : Number
      {
         return var_992.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_682 = param1;
         if(var_993 != null)
         {
            var_993.soundTransform = new SoundTransform(var_682);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_814 = true;
      }
   }
}
