package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1405:Array;
      
      private var var_2350:String;
      
      private var var_2349:String;
      
      private var var_2351:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1405 = param1;
         this.var_2350 = param2;
         this.var_2349 = param3;
         this.var_2351 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1405;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2350;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2349;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2351;
      }
   }
}
