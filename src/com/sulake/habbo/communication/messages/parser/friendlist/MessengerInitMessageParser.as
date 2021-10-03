package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2417:int;
      
      private var var_2413:int;
      
      private var var_2414:int;
      
      private var var_2416:int;
      
      private var var_2418:int;
      
      private var var_2415:int;
      
      private var var_91:Array;
      
      private var var_208:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_91 = new Array();
         this.var_208 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2417 = param1.readInteger();
         this.var_2413 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_91.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_208.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2418 = param1.readInteger();
         this.var_2415 = param1.readInteger();
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2417;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2413;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2414;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2418;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2415;
      }
      
      public function get categories() : Array
      {
         return this.var_91;
      }
      
      public function get friends() : Array
      {
         return this.var_208;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2416;
      }
   }
}
