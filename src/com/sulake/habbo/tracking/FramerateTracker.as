package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1487:int;
      
      private var var_2428:int;
      
      private var var_1101:int;
      
      private var var_430:Number;
      
      private var var_2427:Boolean;
      
      private var var_2429:int;
      
      private var var_1750:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2428 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2429 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2427 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1101;
         if(this.var_1101 == 1)
         {
            this.var_430 = param1;
            this.var_1487 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1101);
            this.var_430 = this.var_430 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2427 && param3 - this.var_1487 >= this.var_2428 && this.var_1750 < this.var_2429)
         {
            _loc5_ = 1000 / this.var_430;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1750;
            this.var_1487 = param3;
            this.var_1101 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
