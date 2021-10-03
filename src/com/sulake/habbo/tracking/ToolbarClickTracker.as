package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1184:IHabboTracking;
      
      private var var_1776:Boolean = false;
      
      private var var_2539:int = 0;
      
      private var var_1799:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1184 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1184 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1776 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2539 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1776)
         {
            return;
         }
         ++this.var_1799;
         if(this.var_1799 <= this.var_2539)
         {
            this.var_1184.track("toolbar",param1);
         }
      }
   }
}
