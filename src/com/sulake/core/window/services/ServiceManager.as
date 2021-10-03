package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2659:uint;
      
      private var var_130:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_229:IWindowContext;
      
      private var var_992:IMouseDraggingService;
      
      private var var_991:IMouseScalingService;
      
      private var var_995:IMouseListenerService;
      
      private var var_996:IFocusManagerService;
      
      private var var_993:IToolTipAgentService;
      
      private var var_994:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2659 = 0;
         this.var_130 = param2;
         this.var_229 = param1;
         this.var_992 = new WindowMouseDragger(param2);
         this.var_991 = new WindowMouseScaler(param2);
         this.var_995 = new WindowMouseListener(param2);
         this.var_996 = new FocusManager(param2);
         this.var_993 = new WindowToolTipAgent(param2);
         this.var_994 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_992 != null)
         {
            this.var_992.dispose();
            this.var_992 = null;
         }
         if(this.var_991 != null)
         {
            this.var_991.dispose();
            this.var_991 = null;
         }
         if(this.var_995 != null)
         {
            this.var_995.dispose();
            this.var_995 = null;
         }
         if(this.var_996 != null)
         {
            this.var_996.dispose();
            this.var_996 = null;
         }
         if(this.var_993 != null)
         {
            this.var_993.dispose();
            this.var_993 = null;
         }
         if(this.var_994 != null)
         {
            this.var_994.dispose();
            this.var_994 = null;
         }
         this.var_130 = null;
         this.var_229 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_992;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_991;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_995;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_996;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_993;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_994;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
