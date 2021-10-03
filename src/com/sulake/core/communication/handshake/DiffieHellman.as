package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1319:BigInteger;
      
      private var var_608:BigInteger;
      
      private var var_1558:BigInteger;
      
      private var var_1559:BigInteger;
      
      private var var_2118:BigInteger;
      
      private var var_1888:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1319 = param1;
         var_1558 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2118.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1559 = new BigInteger();
         var_1559.fromRadix(param1,param2);
         var_2118 = var_1559.modPow(var_608,var_1319);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1888.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1319.toString() + ",generator: " + var_1558.toString() + ",secret: " + param1);
         var_608 = new BigInteger();
         var_608.fromRadix(param1,param2);
         var_1888 = var_1558.modPow(var_608,var_1319);
         return true;
      }
   }
}
