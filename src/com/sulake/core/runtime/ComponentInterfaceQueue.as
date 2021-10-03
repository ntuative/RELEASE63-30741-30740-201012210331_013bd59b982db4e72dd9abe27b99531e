package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1694:IID;
      
      private var var_679:Boolean;
      
      private var var_1071:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1694 = param1;
         this.var_1071 = new Array();
         this.var_679 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1694;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_679;
      }
      
      public function get receivers() : Array
      {
         return this.var_1071;
      }
      
      public function dispose() : void
      {
         if(!this.var_679)
         {
            this.var_679 = true;
            this.var_1694 = null;
            while(this.var_1071.length > 0)
            {
               this.var_1071.pop();
            }
            this.var_1071 = null;
         }
      }
   }
}
