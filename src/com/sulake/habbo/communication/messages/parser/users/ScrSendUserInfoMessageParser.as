package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1592:int = 1;
      
      public static const const_1516:int = 2;
       
      
      private var var_903:String;
      
      private var var_2396:int;
      
      private var var_2393:int;
      
      private var var_2390:int;
      
      private var var_2394:int;
      
      private var var_2391:Boolean;
      
      private var var_2308:Boolean;
      
      private var var_2313:int;
      
      private var var_2314:int;
      
      private var var_2397:Boolean;
      
      private var var_2392:int;
      
      private var var_2395:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_903 = param1.readString();
         this.var_2396 = param1.readInteger();
         this.var_2393 = param1.readInteger();
         this.var_2390 = param1.readInteger();
         this.var_2394 = param1.readInteger();
         this.var_2391 = param1.readBoolean();
         this.var_2308 = param1.readBoolean();
         this.var_2313 = param1.readInteger();
         this.var_2314 = param1.readInteger();
         this.var_2397 = param1.readBoolean();
         this.var_2392 = param1.readInteger();
         this.var_2395 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_903;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2396;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2393;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2390;
      }
      
      public function get responseType() : int
      {
         return this.var_2394;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2391;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2308;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2313;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2314;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2397;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2392;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2395;
      }
   }
}
