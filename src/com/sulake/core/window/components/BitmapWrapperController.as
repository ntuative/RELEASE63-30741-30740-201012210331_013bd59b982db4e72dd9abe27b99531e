package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IBitmapDataContainer;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class BitmapWrapperController extends WindowController implements IBitmapWrapperWindow, IBitmapDataContainer
   {
      
      protected static const const_1122:String = "handle_bitmap_disposing";
      
      protected static const const_1531:Boolean = true;
      
      protected static const const_1121:String = "bitmap_asset_name";
      
      protected static const const_1530:String = null;
       
      
      protected var _bitmapData:BitmapData;
      
      protected var var_512:Boolean = true;
      
      protected var var_1172:String;
      
      public function BitmapWrapperController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmap(param1:BitmapData) : void
      {
         if(this.var_512 && this._bitmapData && param1 != this._bitmapData)
         {
            this._bitmapData.dispose();
         }
         this._bitmapData = param1;
         var_16.invalidate(this,var_11,WindowRedrawFlag.const_72);
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this.bitmap = param1;
      }
      
      public function get disposesBitmap() : Boolean
      {
         return this.var_512;
      }
      
      public function set disposesBitmap(param1:Boolean) : void
      {
         this.var_512 = param1;
      }
      
      override public function clone() : IWindow
      {
         var _loc1_:BitmapWrapperController = super.clone() as BitmapWrapperController;
         _loc1_._bitmapData = this._bitmapData;
         _loc1_.var_512 = this.var_512;
         _loc1_.var_1172 = this.var_1172;
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         if(this._bitmapData)
         {
            if(this.var_512)
            {
               this._bitmapData.dispose();
            }
            this._bitmapData = null;
         }
         super.dispose();
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         _loc1_.push(new PropertyStruct(const_1122,this.var_512,PropertyStruct.const_50,this.var_512 != const_1531));
         _loc1_.push(new PropertyStruct(const_1121,this.var_1172,PropertyStruct.const_89,this.var_1172 != const_1530));
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case const_1122:
                  this.var_512 = _loc2_.value as Boolean;
                  break;
               case const_1121:
                  this.var_1172 = _loc2_.value as String;
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
