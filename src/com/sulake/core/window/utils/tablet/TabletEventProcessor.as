package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2701:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_129 = param1.desktop;
         var_77 = param1.var_1162 as WindowController;
         _lastClickTarget = param1.var_1160 as WindowController;
         var_136 = param1.renderer;
         var_766 = param1.var_1159;
         param2.begin();
         param2.end();
         param1.desktop = var_129;
         param1.var_1162 = var_77;
         param1.var_1160 = _lastClickTarget;
         param1.renderer = var_136;
         param1.var_1159 = var_766;
      }
   }
}
