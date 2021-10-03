package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_746:String = "RWUAM_WHISPER_USER";
      
      public static const const_793:String = "RWUAM_IGNORE_USER";
      
      public static const const_742:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_404:String = "RWUAM_KICK_USER";
      
      public static const const_699:String = "RWUAM_BAN_USER";
      
      public static const const_618:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_601:String = "RWUAM_RESPECT_USER";
      
      public static const const_791:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_616:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_773:String = "RWUAM_START_TRADING";
      
      public static const const_573:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_504:String = "RWUAM_KICK_BOT";
      
      public static const const_802:String = "RWUAM_REPORT";
      
      public static const const_539:String = "RWUAM_PICKUP_PET";
      
      public static const const_1436:String = "RWUAM_TRAIN_PET";
      
      public static const const_448:String = " RWUAM_RESPECT_PET";
      
      public static const const_348:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
