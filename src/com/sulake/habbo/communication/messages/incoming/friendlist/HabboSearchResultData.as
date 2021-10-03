package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_1958:int;
      
      private var var_1463:String;
      
      private var var_1940:String;
      
      private var var_2438:Boolean;
      
      private var var_2437:Boolean;
      
      private var var_2439:int;
      
      private var var_1939:String;
      
      private var var_2436:String;
      
      private var var_1462:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1958 = param1.readInteger();
         this.var_1463 = param1.readString();
         this.var_1940 = param1.readString();
         this.var_2438 = param1.readBoolean();
         this.var_2437 = param1.readBoolean();
         param1.readString();
         this.var_2439 = param1.readInteger();
         this.var_1939 = param1.readString();
         this.var_2436 = param1.readString();
         this.var_1462 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_1958;
      }
      
      public function get avatarName() : String
      {
         return this.var_1463;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1940;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2438;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2437;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2439;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1939;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2436;
      }
      
      public function get realName() : String
      {
         return this.var_1462;
      }
   }
}
