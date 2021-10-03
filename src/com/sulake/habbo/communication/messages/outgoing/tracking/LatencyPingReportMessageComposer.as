package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2516:int;
      
      private var var_2514:int;
      
      private var var_2515:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2516 = param1;
         this.var_2514 = param2;
         this.var_2515 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2516,this.var_2514,this.var_2515];
      }
      
      public function dispose() : void
      {
      }
   }
}
