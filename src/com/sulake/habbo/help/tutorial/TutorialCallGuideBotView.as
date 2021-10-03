package com.sulake.habbo.help.tutorial
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import flash.display.BitmapData;
   
   public class TutorialCallGuideBotView implements ITutorialUIView
   {
       
      
      private var var_45:TutorialUI;
      
      private var var_643:IWindowContainer;
      
      public function TutorialCallGuideBotView(param1:IItemListWindow, param2:TutorialUI)
      {
         super();
         this.var_45 = param2;
         var _loc3_:IWindowContainer = param2.buildXmlWindow("tutorial_call_guidebot") as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.procedure = this.windowProcedure;
         param1.addListItem(_loc3_ as IWindow);
         this.setToolbarIconHighlight(true);
         this.var_45.prepareForTutorial();
         this.var_45.help.toolbar.events.addEventListener(HabboToolbarShowMenuEvent.const_49,this.onShowMenuEvent);
      }
      
      public function get view() : IWindowContainer
      {
         return null;
      }
      
      public function get id() : String
      {
         return TutorialUI.const_428;
      }
      
      public function dispose() : void
      {
         this.setToolbarIconHighlight(false);
         this.var_45.help.toolbar.events.removeEventListener(HabboToolbarShowMenuEvent.const_49,this.onShowMenuEvent);
      }
      
      private function onShowMenuEvent(param1:HabboToolbarShowMenuEvent) : void
      {
         if(param1.menuId == HabboToolbarIconEnum.HELP && param1.type == HabboToolbarShowMenuEvent.const_49)
         {
            this.setToolbarIconHighlight(false);
            this.hideToolbarIconHighlightArrow();
         }
      }
      
      public function setToolbarIconHighlight(param1:Boolean) : void
      {
         var _loc2_:HabboToolbarSetIconEvent = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_98,HabboToolbarIconEnum.HELP);
         if(param1)
         {
            _loc2_.iconState = "highlight_blue";
            this.showToolbarIconHighlightArrow();
         }
         else
         {
            _loc2_.iconState = "0";
            this.hideToolbarIconHighlightArrow();
         }
         this.var_45.help.toolbar.events.dispatchEvent(_loc2_);
      }
      
      private function showToolbarIconHighlightArrow() : void
      {
         var _loc2_:* = null;
         if(this.var_643 != null)
         {
            return;
         }
         this.var_643 = this.var_45.buildXmlWindow("tutorial_arrow") as IWindowContainer;
         var _loc1_:IBitmapWrapperWindow = this.var_643.findChildByName("arrow") as IBitmapWrapperWindow;
         if(_loc1_ != null)
         {
            _loc2_ = BitmapDataAsset(this.var_45.assets.getAssetByName("tutorial_highlight_blue_arrow"));
            _loc1_.bitmap = (_loc2_.content as BitmapData).clone();
         }
         this.var_45.help.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.HELP_ARROW,this.var_643));
      }
      
      private function hideToolbarIconHighlightArrow() : void
      {
         if(this.var_643 != null)
         {
            this.var_643.dispose();
            this.var_643 = null;
         }
      }
      
      private function windowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         switch(param2.name)
         {
            case "button_cancel":
               if(param1.type == WindowMouseEvent.const_39)
               {
                  this.var_45.showView(TutorialUI.const_79);
               }
         }
      }
   }
}
