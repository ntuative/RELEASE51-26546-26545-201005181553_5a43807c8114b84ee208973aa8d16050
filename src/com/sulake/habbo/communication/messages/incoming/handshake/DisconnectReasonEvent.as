package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1594:int = 5;
      
      public static const const_1563:int = 113;
      
      public static const const_1550:int = 29;
      
      public static const const_1508:int = 0;
      
      public static const const_1671:int = 102;
      
      public static const const_1633:int = 25;
      
      public static const const_1548:int = 20;
      
      public static const const_1635:int = 116;
      
      public static const const_1703:int = 114;
      
      public static const const_1612:int = 101;
      
      public static const const_1486:int = 108;
      
      public static const const_1485:int = 112;
      
      public static const const_1664:int = 100;
      
      public static const const_1673:int = 24;
      
      public static const const_1298:int = 10;
      
      public static const const_1501:int = 111;
      
      public static const const_1522:int = 23;
      
      public static const const_1626:int = 26;
      
      public static const const_1241:int = 2;
      
      public static const const_1662:int = 22;
      
      public static const const_1641:int = 17;
      
      public static const const_1615:int = 18;
      
      public static const const_1648:int = 3;
      
      public static const const_1562:int = 109;
      
      public static const const_1338:int = 1;
      
      public static const const_1479:int = 103;
      
      public static const const_1591:int = 11;
      
      public static const const_1602:int = 28;
      
      public static const const_1655:int = 104;
      
      public static const const_1559:int = 13;
      
      public static const const_1502:int = 107;
      
      public static const const_1661:int = 27;
      
      public static const const_1697:int = 118;
      
      public static const const_1507:int = 115;
      
      public static const const_1554:int = 16;
      
      public static const const_1684:int = 19;
      
      public static const const_1660:int = 4;
      
      public static const const_1515:int = 105;
      
      public static const const_1700:int = 117;
      
      public static const const_1639:int = 119;
      
      public static const const_1535:int = 106;
      
      public static const const_1699:int = 12;
      
      public static const const_1511:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1338:
            case const_1298:
               return "banned";
            case const_1241:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
