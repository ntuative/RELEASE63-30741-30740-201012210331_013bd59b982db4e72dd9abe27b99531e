package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_231:Map;
      
      private var var_2435:int;
      
      public function AvatarImageActionCache()
      {
         super();
         this.var_231 = new Map();
         this.setLastAccessTime(getTimer());
      }
      
      public function dispose() : void
      {
         this.debugInfo("[dispose]");
         if(this.var_231 == null)
         {
            return;
         }
         this.var_231.dispose();
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return this.var_231.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         this.var_231.add(_loc3_,param2);
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         this.var_2435 = param1;
      }
      
      public function getLastAccessTime() : int
      {
         return this.var_2435;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
   }
}
