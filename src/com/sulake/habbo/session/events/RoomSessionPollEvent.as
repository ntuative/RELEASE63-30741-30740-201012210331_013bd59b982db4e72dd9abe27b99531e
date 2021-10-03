package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_139:String = "RSPE_POLL_OFFER";
      
      public static const const_65:String = "RSPE_POLL_ERROR";
      
      public static const const_132:String = "RSPE_POLL_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_1550:String;
      
      private var var_1383:int = 0;
      
      private var var_1805:String = "";
      
      private var var_1804:String = "";
      
      private var var_1382:Array = null;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         this._id = param3;
         super(param1,param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_1550;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_1550 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1383;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1383 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_1805;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_1805 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_1804;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_1804 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1382;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1382 = param1;
      }
   }
}
