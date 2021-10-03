package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.viewer.BundleProductContainer;
   import com.sulake.habbo.catalog.viewer.IGridItem;
   import com.sulake.habbo.catalog.viewer.IItemGrid;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.ProductContainer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ItemGridCatalogWidget extends CatalogWidget implements ICatalogWidget, IItemGrid
   {
       
      
      protected var var_1179:IItemGridWindow;
      
      protected var var_1781:XML;
      
      protected var var_340:IGridItem;
      
      private var var_1753:int = 0;
      
      private var var_174:Timer;
      
      protected var var_177:Boolean = true;
      
      private var var_887:int = 0;
      
      private var _scrollBar:IScrollbarWindow;
      
      public function ItemGridCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
         this._scrollBar = _window.findChildByName("itemGridScrollbar") as IScrollbarWindow;
         if(this._scrollBar != null)
         {
            this._scrollBar.visible = false;
            this._scrollBar.addEventListener(WindowEvent.const_609,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_269,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_697,this.deActivateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_208,this.deActivateScrollbar);
         }
      }
      
      override public function dispose() : void
      {
         if(this.var_174 != null)
         {
            this.var_174.stop();
            this.var_174.removeEventListener(TimerEvent.TIMER,this.populateItemGrid);
            this.var_174 = null;
         }
         this.var_1179.destroyGridItems();
         this.var_1179 = null;
         this.var_1781 = null;
         this.var_340 = null;
         super.dispose();
      }
      
      override public function init() : void
      {
         this.var_1179 = _window.findChildByName("itemGrid") as IItemGridWindow;
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("gridItem") as XmlAsset;
         this.var_1781 = _loc1_.content as XML;
         this.populateItemGrid();
         this.loadItemGridGraphics();
         if(this.var_177)
         {
            this.var_174 = new Timer(25);
            this.var_174.addEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
            this.var_174.start();
         }
      }
      
      public function select(param1:IGridItem) : void
      {
         if(this.var_340 != null)
         {
            this.var_340.deActivate();
         }
         this.var_340 = param1;
         param1.activate();
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            events.dispatchEvent(new SelectProductEvent(_loc2_));
         }
      }
      
      protected function populateItemGrid() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in page.offers)
         {
            this.createGridItem(_loc1_);
            _loc1_.productContainer.grid = this;
         }
      }
      
      protected function loadItemGridGraphics(param1:TimerEvent = null) : void
      {
         var _loc4_:* = null;
         var _loc2_:int = -1;
         if(param1 != null)
         {
            _loc2_ = param1.currentTarget.currentCount;
            if(this.var_887 == page.offers.length)
            {
               (param1.target as Timer).removeEventListener(TimerEvent.TIMER,this.populateItemGrid);
               (param1.target as Timer).stop();
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            if(this.var_887 >= 0 && this.var_887 < page.offers.length)
            {
               _loc4_ = page.offers[this.var_887];
               this.loadGraphics(_loc4_);
               _loc4_.productContainer.grid = this;
            }
            ++this.var_887;
            _loc3_++;
         }
      }
      
      private function activateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = true;
      }
      
      private function deActivateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = false;
      }
      
      protected function createGridItem(param1:Offer) : void
      {
         var _loc2_:IWindowContainer = page.viewer.catalog.windowManager.buildFromXML(this.var_1781) as IWindowContainer;
         this.var_1179.addGridItem(_loc2_);
         param1.productContainer.view = _loc2_;
         if(param1.pricingModel == Offer.const_531)
         {
            ++this.var_1753;
            (param1.productContainer as BundleProductContainer).setBundleCounter(this.var_1753);
         }
      }
      
      protected function loadGraphics(param1:Offer) : void
      {
         param1.productContainer.initProductIcon(page.viewer.roomEngine);
      }
   }
}
