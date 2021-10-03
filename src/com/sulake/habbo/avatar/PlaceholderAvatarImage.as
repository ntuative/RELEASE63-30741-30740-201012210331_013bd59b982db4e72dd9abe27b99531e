package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_738:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_679)
         {
            _structure = null;
            _assets = null;
            var_231 = null;
            var_256 = null;
            var_546 = null;
            var_515 = null;
            var_290 = null;
            if(!var_1181 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_692 = null;
            var_679 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_738[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_738[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_341:
               switch(_loc3_)
               {
                  case AvatarAction.const_633:
                  case AvatarAction.const_454:
                  case AvatarAction.const_328:
                  case AvatarAction.const_749:
                  case AvatarAction.const_375:
                  case AvatarAction.const_722:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_279:
            case AvatarAction.const_705:
            case AvatarAction.const_230:
            case AvatarAction.const_684:
            case AvatarAction.const_669:
            case AvatarAction.const_816:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
