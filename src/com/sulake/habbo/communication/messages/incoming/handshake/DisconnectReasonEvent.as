package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1799:int = 0;
      
      public static const const_1340:int = 1;
      
      public static const const_1402:int = 2;
      
      public static const const_1737:int = 3;
      
      public static const const_1802:int = 4;
      
      public static const const_1727:int = 5;
      
      public static const const_1257:int = 10;
      
      public static const const_1771:int = 11;
      
      public static const const_1697:int = 12;
      
      public static const const_1698:int = 13;
      
      public static const const_1641:int = 16;
      
      public static const const_1630:int = 17;
      
      public static const const_1623:int = 18;
      
      public static const const_1714:int = 19;
      
      public static const const_1686:int = 20;
      
      public static const const_1621:int = 22;
      
      public static const const_1700:int = 23;
      
      public static const const_1807:int = 24;
      
      public static const const_1751:int = 25;
      
      public static const const_1765:int = 26;
      
      public static const const_1789:int = 27;
      
      public static const const_1812:int = 28;
      
      public static const const_1657:int = 29;
      
      public static const const_1731:int = 100;
      
      public static const const_1677:int = 101;
      
      public static const const_1712:int = 102;
      
      public static const const_1628:int = 103;
      
      public static const const_1660:int = 104;
      
      public static const const_1709:int = 105;
      
      public static const const_1658:int = 106;
      
      public static const const_1589:int = 107;
      
      public static const const_1685:int = 108;
      
      public static const const_1694:int = 109;
      
      public static const const_1611:int = 110;
      
      public static const const_1678:int = 111;
      
      public static const const_1734:int = 112;
      
      public static const const_1702:int = 113;
      
      public static const const_1710:int = 114;
      
      public static const const_1656:int = 115;
      
      public static const const_1599:int = 116;
      
      public static const const_1777:int = 117;
      
      public static const const_1635:int = 118;
      
      public static const const_1774:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1340:
            case const_1257:
               return "banned";
            case const_1402:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
