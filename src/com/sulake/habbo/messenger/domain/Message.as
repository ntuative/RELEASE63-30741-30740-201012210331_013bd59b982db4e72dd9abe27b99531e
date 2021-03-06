package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_650:int = 1;
      
      public static const const_626:int = 2;
      
      public static const const_604:int = 3;
      
      public static const const_1069:int = 4;
      
      public static const const_605:int = 5;
      
      public static const const_1018:int = 6;
       
      
      private var _type:int;
      
      private var var_952:int;
      
      private var var_1933:String;
      
      private var var_2510:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_952 = param2;
         this.var_1933 = param3;
         this.var_2510 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1933;
      }
      
      public function get time() : String
      {
         return this.var_2510;
      }
      
      public function get senderId() : int
      {
         return this.var_952;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
