package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_675:IAssetLoader;
      
      private var var_1311:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1311 = param1;
         var_675 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_675;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_675 != null)
            {
               if(true)
               {
                  var_675.dispose();
                  var_675 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1311;
      }
   }
}
