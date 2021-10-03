package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1491:int;
      
      private var _name:String;
      
      private var var_1420:int;
      
      private var var_1976:int;
      
      private var var_1949:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_546:String;
      
      private var var_1977:int;
      
      private var var_1975:int;
      
      private var var_1978:int;
      
      private var var_1951:int;
      
      private var var_1950:int;
      
      private var _ownerName:String;
      
      private var var_703:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1491;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1420;
      }
      
      public function get maxLevel() : int
      {
         return this.var_1976;
      }
      
      public function get experience() : int
      {
         return this.var_1949;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_546;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_1977;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_1975;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_1978;
      }
      
      public function get respect() : int
      {
         return this.var_1951;
      }
      
      public function get ownerId() : int
      {
         return this.var_1950;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_703;
      }
      
      public function flush() : Boolean
      {
         this.var_1491 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1491 = param1.readInteger();
         this._name = param1.readString();
         this.var_1420 = param1.readInteger();
         this.var_1976 = param1.readInteger();
         this.var_1949 = param1.readInteger();
         this.var_1977 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_1975 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_1978 = param1.readInteger();
         this.var_546 = param1.readString();
         this.var_1951 = param1.readInteger();
         this.var_1950 = param1.readInteger();
         this.var_703 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
