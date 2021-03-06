package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.quest.enum.QuestStatusEnum;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import flash.events.Event;
   
   public class QuestCampaign implements IDisposable
   {
       
      
      private var _controller:QuestController;
      
      private var _id:String;
      
      private var var_1635:int;
      
      private var var_317:Array;
      
      private var var_464:Quest;
      
      private var var_277:QuestView;
      
      private var _window:IFrameWindow;
      
      private var var_1067:IWindowContainer;
      
      private var var_1327:IWindowContainer;
      
      private var var_276:IItemListWindow;
      
      private var var_694:Array;
      
      private var var_679:Boolean = false;
      
      private var var_1068:IWindowContainer;
      
      private var var_162:QuestHelp;
      
      public function QuestCampaign(param1:QuestController, param2:String, param3:int)
      {
         this.var_317 = [];
         this.var_694 = [];
         super();
         this._controller = param1;
         this._id = param2;
         this.var_1635 = param3;
         this.var_162 = new QuestHelp(this);
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.reset();
         if(this.var_277)
         {
            this.var_277.dispose();
            this.var_277 = null;
         }
         for each(_loc1_ in this.var_694)
         {
            _loc1_.dispose();
         }
         this.var_694 = [];
         this._window.dispose();
         this._window = null;
         this.var_679 = true;
         if(this.var_162)
         {
            this.var_162.dispose();
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_679;
      }
      
      public function isVisible() : Boolean
      {
         return this._window != null && this._window.visible;
      }
      
      public function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      private function reset() : void
      {
         var _loc1_:* = null;
         if(this.var_317)
         {
            for each(_loc1_ in this.var_317)
            {
               this.var_276.removeListItem(_loc1_.view);
               _loc1_.dispose();
            }
            this.var_317 = null;
            this.var_276.destroyListItems();
            this.var_276.removeListItems();
         }
         this.var_464 = null;
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            this._window.visible = true;
            return;
         }
         this._window = IFrameWindow(this._controller.questEngine.getXmlWindow("QuestEngine"));
         this._window.findChildByTag("close").procedure = this.onWindowClose;
         this._window.center();
         this.var_1067 = this._window.findChildByName("quest.container") as IWindowContainer;
         this.var_1327 = this._window.findChildByName("currency.container") as IWindowContainer;
         this.var_276 = this._window.findChildByName("quests") as IItemListWindow;
         var _loc1_:* = "icon_" + this.id + "_pixeltype";
         var _loc2_:IBitmapWrapperWindow = this.var_1327.findChildByName("currency.icon") as IBitmapWrapperWindow;
         this._controller.questEngine.setImageFromAsset(_loc2_,_loc1_,this.onPreviewImageReady);
         this.var_1327.findChildByName("currency.amount").caption = "${quest_" + this.id + ".currency}";
         var _loc3_:String = "quest_" + this.id;
         var _loc4_:* = _loc3_ + ".title";
         this._window.caption = "${" + _loc4_ + "}";
         var _loc5_:* = _loc3_ + ".currency";
         this.setText("currency.amount",_loc5_);
         this.var_1068 = this._window.findChildByName("help.button") as IWindowContainer;
         if(this.var_1068)
         {
            this.var_1068.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.helpButtonEventProc);
            this.var_1068.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.helpButtonEventProc);
            this.var_1068.addEventListener(WindowMouseEvent.const_25,this.helpButtonEventProc);
         }
      }
      
      private function helpButtonEventProc(param1:Event, param2:IWindow = null) : void
      {
         if(param2 == null)
         {
            param2 = param1.target as IWindow;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.openHelp();
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            param2.style = 0;
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            param2.style = 2;
         }
      }
      
      private function openHelp() : void
      {
         Logger.log("Open Questing Help System");
         this.var_1067.removeChildAt(0);
         if(this.var_277)
         {
            this.var_277.dispose();
            this.var_277 = null;
         }
         if(this.var_464)
         {
            this.var_464.selected = false;
         }
         if(this.var_162)
         {
            this.var_1067.addChild(this.var_162.view);
         }
      }
      
      public function updatePurse() : void
      {
         var _loc1_:int = this._controller.questEngine.getActivityPointsForType(this.var_1635);
         this._controller.questEngine.localization.registerParameter("quest_" + this.id + ".currency","amount",_loc1_.toString());
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_679)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(!this._window)
         {
            return;
         }
         if(_loc2_ != null)
         {
            _loc3_ = this.var_1327.findChildByName("currency.icon") as IBitmapWrapperWindow;
            this._controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onPreviewImageReady);
         }
      }
      
      public function get controller() : QuestController
      {
         return this._controller;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      public function openCampaign(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         this.prepareWindow();
         this.reset();
         this.updatePurse();
         param1.sort(this.orderByName,Array.NUMERIC);
         this.var_317 = [];
         for each(_loc2_ in param1)
         {
            this.var_317.push(new Quest(_loc2_,this));
         }
         _loc3_ = null;
         for each(_loc4_ in this.var_317)
         {
            this.var_276.addListItem(_loc4_.view);
            if(!_loc3_ && (_loc4_.status == QuestStatusEnum.const_40 || _loc4_.status == QuestStatusEnum.const_488))
            {
               _loc3_ = _loc4_;
            }
         }
         if(_loc3_)
         {
            this.activateListItem(_loc3_);
            if(this.var_276.maxScrollV > 0)
            {
               this.var_276.scrollV = _loc3_.view.y / this.var_276.maxScrollV;
            }
         }
         else if(this.var_317.length > 0)
         {
            this.activateListItem(this.var_317[0]);
         }
      }
      
      private function orderByName(param1:QuestMessageData, param2:QuestMessageData) : Number
      {
         var _loc3_:String = param1.localizationPrefix;
         var _loc4_:String = param2.localizationPrefix;
         var _loc5_:uint = param1.sortCode;
         var _loc6_:uint = param2.sortCode;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         return 0;
      }
      
      private function orderByDate(param1:QuestMessageData, param2:QuestMessageData) : Number
      {
         var _loc3_:String = param1.endDateTimeStamp;
         var _loc4_:String = param2.endDateTimeStamp;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function updateListView() : void
      {
         var _loc1_:IItemListWindow = this._window.findChildByName("quests") as IItemListWindow;
         _loc1_.invalidate();
      }
      
      public function activateListItem(param1:Quest) : void
      {
         if(this.var_464 != null)
         {
            this.var_464.selected = false;
         }
         this.var_464 = param1;
         this.var_464.selected = true;
         this.showQuestData(this.var_464);
      }
      
      private function showQuestData(param1:Quest) : void
      {
         this.var_1067.removeChildAt(0);
         if(this.var_277)
         {
            this.var_277.dispose();
            this.var_277 = null;
         }
         this.var_277 = new QuestView(this,param1);
         this.var_1067.addChild(this.var_277.view);
         this.var_277.init();
      }
      
      public function questAccepted(param1:QuestMessageData) : void
      {
         this.modifyQuestData(param1);
      }
      
      public function questCompleted(param1:QuestMessageData) : void
      {
         this.modifyQuestData(param1);
         this.var_694.push(new QuestCompleted(this,param1));
      }
      
      public function closeQuestCompleted(param1:QuestCompleted) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         for each(_loc3_ in this.var_694)
         {
            if(_loc3_ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_)
         {
            _loc2_.dispose();
            _loc4_ = this.var_694.indexOf(_loc2_);
            if(_loc4_ >= 0)
            {
               this.var_694.splice(_loc4_,1);
            }
         }
      }
      
      private function modifyQuestData(param1:QuestMessageData) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in this.var_317)
         {
            if(_loc4_.id == param1.id)
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            _loc5_ = new Quest(param1,this);
            this.var_317[_loc3_] = _loc5_;
            _loc6_ = this.var_276.getListItemIndex(_loc2_.view);
            this.var_276.removeListItem(_loc2_.view);
            if(_loc6_ > -1)
            {
               this.var_276.addListItemAt(_loc5_.view,_loc6_);
            }
            else
            {
               this.var_276.addListItem(_loc5_.view);
            }
            if(this.var_464 == _loc2_)
            {
               this.activateListItem(_loc5_);
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
      }
      
      private function onConfirm(param1:IConfirmDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function find(param1:String) : IWindow
      {
         var _loc2_:* = null;
         if(this._window is IWindowContainer)
         {
            _loc2_ = IWindowContainer(this._window).findChildByName(param1);
         }
         else if(this._window is IItemListWindow)
         {
            _loc2_ = IItemListWindow(this._window).getListItemByName(param1);
         }
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function setText(param1:String, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:IWindow = this.find(param1);
         if(_loc4_)
         {
            if(param3)
            {
               param2 = "${" + param2 + "}";
            }
            _loc4_.caption = param2;
         }
      }
   }
}
