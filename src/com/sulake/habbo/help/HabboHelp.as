package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var _toolbar:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_283:IHabboCommunicationManager;
      
      private var var_825:IHabboLocalizationManager;
      
      private var var_823:IHabboConfigurationManager;
      
      private var var_1011:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_60:HelpUI;
      
      private var var_156:TutorialUI;
      
      private var var_663:HotelMergeUI;
      
      private var var_824:RegistrationUI;
      
      private var var_1261:CallForHelpData;
      
      private var var_2107:UserRegistry;
      
      private var var_2108:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1261 = new CallForHelpData();
         this.var_2107 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1011 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2108 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2108;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1261;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2107;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_825;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_156;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_663;
      }
      
      override public function dispose() : void
      {
         if(this.var_60 != null)
         {
            this.var_60.dispose();
            this.var_60 = null;
         }
         if(this.var_156 != null)
         {
            this.var_156.dispose();
            this.var_156 = null;
         }
         if(this.var_663)
         {
            this.var_663.dispose();
            this.var_663 = null;
         }
         if(this.var_824 != null)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
         if(this.var_1011 != null)
         {
            this.var_1011.dispose();
            this.var_1011 = null;
         }
         this._incomingMessages = null;
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this.var_825)
         {
            this.var_825.release(new IIDHabboLocalizationManager());
            this.var_825 = null;
         }
         if(this.var_283)
         {
            this.var_283.release(new IIDHabboCommunicationManager());
            this.var_283 = null;
         }
         if(this.var_823)
         {
            this.var_823.release(new IIDHabboConfigurationManager());
            this.var_823 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_60 != null)
         {
            this.var_60.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_60 != null)
         {
            this.var_60.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_60 != null)
         {
            this.var_60.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_60 != null)
         {
            this.var_60.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_60 != null)
         {
            this.var_60.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1011;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_283 != null && param1 != null)
         {
            this.var_283.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_823 == null)
         {
            return param1;
         }
         return this.var_823.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_60 != null)
         {
            this.var_60.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_60 != null)
         {
            this.var_60.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1261.reportedUserId = param1;
         this.var_1261.reportedUserName = param2;
         this.var_60.showUI(HabboHelpViewEnum.const_356);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_60 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_60.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_60 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_60 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_825,this._toolbar);
         }
         return this.var_60 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_156 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_156 = new TutorialUI(this);
         }
         return this.var_156 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_156 != null)
         {
            this.var_156.dispose();
            this.var_156 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_663)
         {
            this.var_663 = new HotelMergeUI(this);
         }
         this.var_663.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_824)
         {
            this.var_824 = new RegistrationUI(this);
         }
         this.var_824.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_156 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_156.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_283 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_283);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_825 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_823 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_80,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_87,this.onRoomSessionEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_69,this.onHabboToolbarEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_38,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_80:
               if(this.var_60 != null)
               {
                  this.var_60.setRoomSessionStatus(true);
               }
               if(this.var_156 != null)
               {
                  this.var_156.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_87:
               if(this.var_60 != null)
               {
                  this.var_60.setRoomSessionStatus(false);
               }
               if(this.var_156 != null)
               {
                  this.var_156.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this._toolbar != null)
         {
            this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_109,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_69)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_38)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
