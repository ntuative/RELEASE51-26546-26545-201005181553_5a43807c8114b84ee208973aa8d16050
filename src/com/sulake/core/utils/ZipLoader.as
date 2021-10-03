package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_497:uint = 0;
      
      private var var_99:FZip;
      
      private var var_1196:Array;
      
      private var var_1807:uint = 0;
      
      private var var_830:int = 0;
      
      private var var_498:uint = 0;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1196 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_169))
         {
            failure("IO Error, load operation failed for file \"undefined\" (" + var_497 + "/" + var_498 + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_497;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_169))
         {
            failure("Parse Error, load operation failed for file \"undefined\" (" + var_497 + "/" + var_498 + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return var_498;
      }
      
      public function get resources() : Array
      {
         return var_1196;
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_99)
         {
            var_99.removeEventListener(Event.COMPLETE,onComplete);
            var_99.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_99.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_99.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_99.removeEventListener(FZipErrorEvent.const_133,onParseError);
         }
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var name:String = null;
         var event:Event = param1;
         try
         {
            name = getQualifiedClassName(var_15.content);
            var_1196.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_830;
            if(var_1196.length == var_1807)
            {
               var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_498,var_497));
            }
            else
            {
               var_15.loadBytes(var_99.getFileAt(var_830).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\" (" + var_497 + "/" + var_498 + " bytes): " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_498 = param1.bytesTotal;
         var_497 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_498,var_497));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 5) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_52 = param1;
         _name = parseNameFromUrl(var_52.url);
         var_294 = param3;
         if(var_99)
         {
            var_99.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_99 = new FZip();
         var_99.addEventListener(Event.COMPLETE,onComplete);
         var_99.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_99.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_99.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_99.addEventListener(FZipErrorEvent.const_133,onParseError);
         var_99.load(var_52);
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_830 = 0;
         var_1807 = var_99.method_13();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_15)
            {
               var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_15.loadBytes(var_99.getFileAt(var_830).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_169))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\" (" + var_497 + "/" + var_498 + " bytes): " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_169 = param1.status;
         debug("Load event STATUS " + var_169 + " for file \"" + var_52.url + "\"");
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_294 > 0)
            {
               if(var_99)
               {
                  var_99.close();
               }
               addRequestCounterToUrlRequest(var_52,const_1060 - var_294);
               if(var_1139)
               {
                  var_52.requestHeaders.push(new URLRequestHeader("pragma","no-cache"));
                  var_52.requestHeaders.push(new URLRequestHeader("Cache-Control","no-cache"));
                  var_1139 = false;
               }
               var_99.load(var_52);
               --var_294;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_52.url + "\" (" + var_497 + "/" + var_498 + " bytes)");
            removeEventListeners();
         }
         return false;
      }
   }
}
