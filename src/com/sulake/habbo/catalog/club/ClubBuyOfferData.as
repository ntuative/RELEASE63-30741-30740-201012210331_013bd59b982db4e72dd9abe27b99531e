package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1496:String;
      
      private var var_1623:int;
      
      private var var_2484:Boolean;
      
      private var var_2481:Boolean;
      
      private var var_2485:int;
      
      private var var_2486:int;
      
      private var var_374:ICatalogPage;
      
      private var var_2480:int;
      
      private var var_2482:int;
      
      private var var_2483:int;
      
      private var var_2533:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1496 = param2;
         this.var_1623 = param3;
         this.var_2484 = param4;
         this.var_2481 = param5;
         this.var_2485 = param6;
         this.var_2486 = param7;
         this.var_2480 = param8;
         this.var_2482 = param9;
         this.var_2483 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_452;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1623;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_374;
      }
      
      public function get priceType() : String
      {
         return Offer.const_629;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1496;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_374 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2533;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2533 = param1;
      }
   }
}
