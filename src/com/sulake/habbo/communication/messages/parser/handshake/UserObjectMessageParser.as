package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_546:String;
      
      private var var_863:String;
      
      private var var_2258:String;
      
      private var var_1462:String;
      
      private var var_2260:int;
      
      private var var_2262:String;
      
      private var var_2259:int;
      
      private var var_2261:int;
      
      private var var_2263:int;
      
      private var _respectLeft:int;
      
      private var var_657:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_546 = param1.readString();
         this.var_863 = param1.readString();
         this.var_2258 = param1.readString();
         this.var_1462 = param1.readString();
         this.var_2260 = param1.readInteger();
         this.var_2262 = param1.readString();
         this.var_2259 = param1.readInteger();
         this.var_2261 = param1.readInteger();
         this.var_2263 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_657 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function get sex() : String
      {
         return this.var_863;
      }
      
      public function get customData() : String
      {
         return this.var_2258;
      }
      
      public function get realName() : String
      {
         return this.var_1462;
      }
      
      public function get tickets() : int
      {
         return this.var_2260;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2262;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2259;
      }
      
      public function get directMail() : int
      {
         return this.var_2261;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2263;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_657;
      }
   }
}
