package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1495:Boolean;
      
      private var var_1982:int;
      
      private var var_372:Boolean;
      
      private var var_964:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1495;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_1982;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_964;
      }
      
      public function get owner() : Boolean
      {
         return this.var_372;
      }
      
      public function flush() : Boolean
      {
         if(this.var_964 != null)
         {
            this.var_964.dispose();
            this.var_964 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1495 = param1.readBoolean();
         if(this.var_1495)
         {
            this.var_1982 = param1.readInteger();
            this.var_372 = param1.readBoolean();
         }
         else
         {
            this.var_964 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
