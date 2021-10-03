package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1496:String;
      
      private var var_1623:int;
      
      private var var_2484:Boolean;
      
      private var var_2481:Boolean;
      
      private var var_2485:int;
      
      private var var_2486:int;
      
      private var var_2480:int;
      
      private var var_2482:int;
      
      private var var_2483:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1496 = param1.readString();
         this.var_1623 = param1.readInteger();
         this.var_2484 = param1.readBoolean();
         this.var_2481 = param1.readBoolean();
         this.var_2485 = param1.readInteger();
         this.var_2486 = param1.readInteger();
         this.var_2480 = param1.readInteger();
         this.var_2482 = param1.readInteger();
         this.var_2483 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1496;
      }
      
      public function get price() : int
      {
         return this.var_1623;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2484;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2481;
      }
      
      public function get periods() : int
      {
         return this.var_2485;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2486;
      }
      
      public function get year() : int
      {
         return this.var_2480;
      }
      
      public function get month() : int
      {
         return this.var_2482;
      }
      
      public function get day() : int
      {
         return this.var_2483;
      }
   }
}
