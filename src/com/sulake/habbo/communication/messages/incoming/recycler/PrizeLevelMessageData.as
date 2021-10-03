package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1381:int;
      
      private var var_2037:int;
      
      private var var_741:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1381 = param1.readInteger();
         this.var_2037 = param1.readInteger();
         this.var_741 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_741.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get prizeLevelId() : int
      {
         return this.var_1381;
      }
      
      public function get probabilityDenominator() : int
      {
         return this.var_2037;
      }
      
      public function get prizes() : Array
      {
         return this.var_741;
      }
   }
}
