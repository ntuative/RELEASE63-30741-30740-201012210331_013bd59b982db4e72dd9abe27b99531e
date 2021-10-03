package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1255:String = "WN_CRETAE";
      
      public static const const_1283:String = "WN_CREATED";
      
      public static const const_939:String = "WN_DESTROY";
      
      public static const const_1001:String = "WN_DESTROYED";
      
      public static const const_1067:String = "WN_OPEN";
      
      public static const const_928:String = "WN_OPENED";
      
      public static const const_933:String = "WN_CLOSE";
      
      public static const const_1114:String = "WN_CLOSED";
      
      public static const const_1087:String = "WN_FOCUS";
      
      public static const const_1038:String = "WN_FOCUSED";
      
      public static const const_1107:String = "WN_UNFOCUS";
      
      public static const const_898:String = "WN_UNFOCUSED";
      
      public static const const_963:String = "WN_ACTIVATE";
      
      public static const const_351:String = "WN_ACTVATED";
      
      public static const const_957:String = "WN_DEACTIVATE";
      
      public static const const_1072:String = "WN_DEACTIVATED";
      
      public static const const_487:String = "WN_SELECT";
      
      public static const const_337:String = "WN_SELECTED";
      
      public static const const_595:String = "WN_UNSELECT";
      
      public static const const_625:String = "WN_UNSELECTED";
      
      public static const const_935:String = "WN_LOCK";
      
      public static const const_1026:String = "WN_LOCKED";
      
      public static const const_966:String = "WN_UNLOCK";
      
      public static const const_1025:String = "WN_UNLOCKED";
      
      public static const const_1063:String = "WN_ENABLE";
      
      public static const const_610:String = "WN_ENABLED";
      
      public static const const_1115:String = "WN_DISABLE";
      
      public static const const_590:String = "WN_DISABLED";
      
      public static const const_801:String = "WN_RESIZE";
      
      public static const const_163:String = "WN_RESIZED";
      
      public static const const_971:String = "WN_RELOCATE";
      
      public static const const_432:String = "WN_RELOCATED";
      
      public static const const_996:String = "WN_MINIMIZE";
      
      public static const const_894:String = "WN_MINIMIZED";
      
      public static const const_925:String = "WN_MAXIMIZE";
      
      public static const const_900:String = "WN_MAXIMIZED";
      
      public static const const_1033:String = "WN_RESTORE";
      
      public static const const_901:String = "WN_RESTORED";
      
      public static const const_1801:String = "WN_ARRANGE";
      
      public static const const_1786:String = "WN_ARRANGED";
      
      public static const const_1604:String = "WN_UPDATE";
      
      public static const const_1626:String = "WN_UPDATED";
      
      public static const const_352:String = "WN_CHILD_ADDED";
      
      public static const const_813:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_298:String = "WN_CHILD_RELOCATED";
      
      public static const const_218:String = "WN_CHILD_ACTIVATED";
      
      public static const const_460:String = "WN_PARENT_ADDED";
      
      public static const const_987:String = "WN_PARENT_REMOVED";
      
      public static const const_455:String = "WN_PARENT_RESIZED";
      
      public static const const_1041:String = "WN_PARENT_RELOCATED";
      
      public static const const_726:String = "WN_PARENT_ACTIVATED";
      
      public static const const_475:String = "WN_STATE_UPDATED";
      
      public static const const_397:String = "WN_STYLE_UPDATED";
      
      public static const const_521:String = "WN_PARAM_UPDATED";
      
      public static const const_1738:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1906,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
