package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_904:RoomObjectLocationCacheItem = null;
      
      private var var_173:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_904 = new RoomObjectLocationCacheItem(param1);
         this.var_173 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_904;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_173;
      }
      
      public function dispose() : void
      {
         if(this.var_904 != null)
         {
            this.var_904.dispose();
            this.var_904 = null;
         }
         if(this.var_173 != null)
         {
            this.var_173.dispose();
            this.var_173 = null;
         }
      }
   }
}
