package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2501:String;
      
      private var var_2079:int;
      
      private var var_2081:int;
      
      private var var_2316:String;
      
      private var var_2502:int;
      
      private var var_1738:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2501 = param1.readString();
         this.var_2079 = param1.readInteger();
         this.var_2081 = param1.readInteger();
         this.var_2316 = param1.readString();
         this.var_2502 = param1.readInteger();
         this.var_1738 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2501;
      }
      
      public function get unitPort() : int
      {
         return this.var_2079;
      }
      
      public function get worldId() : int
      {
         return this.var_2081;
      }
      
      public function get castLibs() : String
      {
         return this.var_2316;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2502;
      }
      
      public function get nodeId() : int
      {
         return this.var_1738;
      }
   }
}
