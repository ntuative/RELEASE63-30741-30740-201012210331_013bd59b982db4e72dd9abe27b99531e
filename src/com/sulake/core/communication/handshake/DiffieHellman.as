package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_793:BigInteger;
      
      private var var_1928:BigInteger;
      
      private var var_1442:BigInteger;
      
      private var var_1929:BigInteger;
      
      private var var_1195:BigInteger;
      
      private var var_1443:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1195 = param1;
         this.var_1443 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1195.toString() + ",generator: " + this.var_1443.toString() + ",secret: " + param1);
         this.var_793 = new BigInteger();
         this.var_793.fromRadix(param1,param2);
         this.var_1928 = this.var_1443.modPow(this.var_793,this.var_1195);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1442 = new BigInteger();
         this.var_1442.fromRadix(param1,param2);
         this.var_1929 = this.var_1442.modPow(this.var_793,this.var_1195);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_1928.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_1929.toRadix(param1);
      }
   }
}
