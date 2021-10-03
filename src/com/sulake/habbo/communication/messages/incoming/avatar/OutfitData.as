package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1548:int;
      
      private var var_1966:String;
      
      private var var_812:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1548 = param1.readInteger();
         this.var_1966 = param1.readString();
         this.var_812 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1548;
      }
      
      public function get figureString() : String
      {
         return this.var_1966;
      }
      
      public function get gender() : String
      {
         return this.var_812;
      }
   }
}
