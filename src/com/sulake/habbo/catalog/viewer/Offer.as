package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1268:String = "pricing_model_unknown";
      
      public static const const_490:String = "pricing_model_single";
      
      public static const const_421:String = "pricing_model_multi";
      
      public static const const_531:String = "pricing_model_bundle";
      
      public static const const_1326:String = "price_type_none";
      
      public static const const_629:String = "price_type_credits";
      
      public static const const_1002:String = "price_type_activitypoints";
      
      public static const const_1105:String = "price_type_credits_and_activitypoints";
       
      
      private var var_744:String;
      
      private var var_1128:String;
      
      private var _offerId:int;
      
      private var var_1789:String;
      
      private var var_1127:int;
      
      private var var_1129:int;
      
      private var var_1635:int;
      
      private var var_374:ICatalogPage;
      
      private var var_745:IProductContainer;
      
      private var var_2524:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1789 = param1.localizationId;
         this.var_1127 = param1.priceInCredits;
         this.var_1129 = param1.priceInActivityPoints;
         this.var_1635 = param1.activityPointType;
         this.var_374 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_374;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1789;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1127;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1129;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1635;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_745;
      }
      
      public function get pricingModel() : String
      {
         return this.var_744;
      }
      
      public function get priceType() : String
      {
         return this.var_1128;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2524;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2524 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1789 = "";
         this.var_1127 = 0;
         this.var_1129 = 0;
         this.var_1635 = 0;
         this.var_374 = null;
         if(this.var_745 != null)
         {
            this.var_745.dispose();
            this.var_745 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_744)
         {
            case const_490:
               this.var_745 = new SingleProductContainer(this,param1);
               break;
            case const_421:
               this.var_745 = new MultiProductContainer(this,param1);
               break;
            case const_531:
               this.var_745 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_744);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_744 = const_490;
            }
            else
            {
               this.var_744 = const_421;
            }
         }
         else if(param1.length > 1)
         {
            this.var_744 = const_531;
         }
         else
         {
            this.var_744 = const_1268;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1127 > 0 && this.var_1129 > 0)
         {
            this.var_1128 = const_1105;
         }
         else if(this.var_1127 > 0)
         {
            this.var_1128 = const_629;
         }
         else if(this.var_1129 > 0)
         {
            this.var_1128 = const_1002;
         }
         else
         {
            this.var_1128 = const_1326;
         }
      }
   }
}
