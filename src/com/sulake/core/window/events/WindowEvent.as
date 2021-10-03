package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1416:String = "WE_CREATE";
      
      public static const const_1499:String = "WE_CREATED";
      
      public static const const_1453:String = "WE_DESTROY";
      
      public static const const_289:String = "WE_DESTROYED";
      
      public static const const_1362:String = "WE_OPEN";
      
      public static const const_1324:String = "WE_OPENED";
      
      public static const const_1336:String = "WE_CLOSE";
      
      public static const const_1461:String = "WE_CLOSED";
      
      public static const const_1439:String = "WE_FOCUS";
      
      public static const const_168:String = "WE_FOCUSED";
      
      public static const const_1281:String = "WE_UNFOCUS";
      
      public static const const_1288:String = "WE_UNFOCUSED";
      
      public static const const_1366:String = "WE_ACTIVATE";
      
      public static const const_1358:String = "WE_ACTIVATED";
      
      public static const const_1359:String = "WE_DEACTIVATE";
      
      public static const const_985:String = "WE_DEACTIVATED";
      
      public static const const_525:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_721:String = "WE_UNSELECT";
      
      public static const const_575:String = "WE_UNSELECTED";
      
      public static const const_1782:String = "WE_ATTACH";
      
      public static const const_1602:String = "WE_ATTACHED";
      
      public static const const_1683:String = "WE_DETACH";
      
      public static const const_1748:String = "WE_DETACHED";
      
      public static const const_1383:String = "WE_LOCK";
      
      public static const const_1254:String = "WE_LOCKED";
      
      public static const const_1299:String = "WE_UNLOCK";
      
      public static const const_1274:String = "WE_UNLOCKED";
      
      public static const const_609:String = "WE_ENABLE";
      
      public static const const_269:String = "WE_ENABLED";
      
      public static const const_697:String = "WE_DISABLE";
      
      public static const const_208:String = "WE_DISABLED";
      
      public static const const_1431:String = "WE_RELOCATE";
      
      public static const const_326:String = "WE_RELOCATED";
      
      public static const const_1464:String = "WE_RESIZE";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1292:String = "WE_MINIMIZE";
      
      public static const const_1517:String = "WE_MINIMIZED";
      
      public static const const_1356:String = "WE_MAXIMIZE";
      
      public static const const_1515:String = "WE_MAXIMIZED";
      
      public static const const_1320:String = "WE_RESTORE";
      
      public static const const_1414:String = "WE_RESTORED";
      
      public static const const_1670:String = "WE_ARRANGE";
      
      public static const const_1655:String = "WE_ARRANGED";
      
      public static const const_97:String = "WE_UPDATE";
      
      public static const const_1766:String = "WE_UPDATED";
      
      public static const const_1648:String = "WE_CHILD_RELOCATE";
      
      public static const const_423:String = "WE_CHILD_RELOCATED";
      
      public static const const_1796:String = "WE_CHILD_RESIZE";
      
      public static const const_273:String = "WE_CHILD_RESIZED";
      
      public static const const_1605:String = "WE_CHILD_REMOVE";
      
      public static const const_511:String = "WE_CHILD_REMOVED";
      
      public static const const_1606:String = "WE_PARENT_RELOCATE";
      
      public static const const_1810:String = "WE_PARENT_RELOCATED";
      
      public static const const_1805:String = "WE_PARENT_RESIZE";
      
      public static const const_1269:String = "WE_PARENT_RESIZED";
      
      public static const const_187:String = "WE_OK";
      
      public static const const_716:String = "WE_CANCEL";
      
      public static const const_110:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_470:String = "WE_SCROLL";
      
      public static const const_144:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1906:IWindow;
      
      protected var var_1905:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1906 = param3;
         this.var_1905 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1906;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1905 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1905;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
