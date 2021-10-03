package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1371:String;
      
      private var _disposed:Boolean;
      
      private var var_1483:String;
      
      private var var_1372:int;
      
      private var _main:ModerationManager;
      
      private var var_843:IDropMenuWindow;
      
      private var var_456:ITextFieldWindow;
      
      private var var_53:IFrameWindow;
      
      private var var_308:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         _main = param1;
         var_1372 = param2;
         var_1483 = param3;
         var_1371 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_213)
         {
            return;
         }
         if(!var_308)
         {
            return;
         }
         var_456.text = "";
         var_308 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_53;
      }
      
      public function getId() : String
      {
         return var_1483;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_308 || false)
         {
            _main.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         _main.connection.send(new ModMessageMessageComposer(var_1372,var_456.text,var_1371));
         this.dispose();
      }
      
      public function show() : void
      {
         var_53 = IFrameWindow(_main.getXmlWindow("send_msgs"));
         var_53.caption = "Msg To: " + var_1483;
         var_53.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_456 = ITextFieldWindow(var_53.findChildByName("message_input"));
         var_456.procedure = onInputClick;
         var_843 = IDropMenuWindow(var_53.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_843);
         var_843.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_53.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_53.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + _main.initMsg.messageTemplates.length);
         param1.populate(_main.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_53 != null)
         {
            var_53.destroy();
            var_53 = null;
         }
         var_843 = null;
         var_456 = null;
         _main = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_64)
         {
            return;
         }
         var _loc3_:String = _main.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_308 = false;
            var_456.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1308;
      }
   }
}
