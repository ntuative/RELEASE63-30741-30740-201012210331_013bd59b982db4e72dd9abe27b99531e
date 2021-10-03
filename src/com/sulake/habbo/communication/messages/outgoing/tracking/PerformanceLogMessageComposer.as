package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2027:int = 0;
      
      private var var_1220:String = "";
      
      private var var_1488:String = "";
      
      private var var_1971:String = "";
      
      private var var_2384:String = "";
      
      private var var_1743:int = 0;
      
      private var var_2383:int = 0;
      
      private var var_2385:int = 0;
      
      private var var_1222:int = 0;
      
      private var var_2386:int = 0;
      
      private var var_1219:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2027 = param1;
         this.var_1220 = param2;
         this.var_1488 = param3;
         this.var_1971 = param4;
         this.var_2384 = param5;
         if(param6)
         {
            this.var_1743 = 1;
         }
         else
         {
            this.var_1743 = 0;
         }
         this.var_2383 = param7;
         this.var_2385 = param8;
         this.var_1222 = param9;
         this.var_2386 = param10;
         this.var_1219 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2027,this.var_1220,this.var_1488,this.var_1971,this.var_2384,this.var_1743,this.var_2383,this.var_2385,this.var_1222,this.var_2386,this.var_1219];
      }
   }
}
