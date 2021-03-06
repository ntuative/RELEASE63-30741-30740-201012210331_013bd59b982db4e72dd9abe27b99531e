package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_157:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_546:String = "";
      
      private var var_812:String = "";
      
      private var var_1696:String = "";
      
      private var var_1917:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_157,param1,param7,param8);
         this._userId = param2;
         this.var_546 = param3;
         this.var_812 = param4;
         this.var_1696 = param5;
         this.var_1917 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function get gender() : String
      {
         return this.var_812;
      }
      
      public function get customInfo() : String
      {
         return this.var_1696;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1917;
      }
   }
}
