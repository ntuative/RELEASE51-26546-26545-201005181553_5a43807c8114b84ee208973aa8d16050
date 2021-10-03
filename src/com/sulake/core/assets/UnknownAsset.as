package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1156:AssetTypeDeclaration;
      
      private var var_660:String;
      
      private var var_20:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1156 = param1;
         var_660 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1156;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_20 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_20 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_20;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_20 = null;
            var_1156 = null;
            var_660 = null;
         }
      }
      
      public function get url() : String
      {
         return var_660;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_20;
      }
   }
}
