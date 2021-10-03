package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2034:int;
      
      private var var_2036:int;
      
      private var var_1127:int;
      
      private var var_1129:int;
      
      private var var_1635:int;
      
      private var var_2035:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2034 = param1.readInteger();
         this.var_2036 = param1.readInteger();
         this.var_1127 = param1.readInteger();
         this.var_1129 = param1.readInteger();
         this.var_1635 = param1.readInteger();
         this.var_2035 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2034;
      }
      
      public function get charges() : int
      {
         return this.var_2036;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1127;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1129;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2035;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1635;
      }
   }
}
