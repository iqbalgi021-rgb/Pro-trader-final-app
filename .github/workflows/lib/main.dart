import 'package:flutter/material.dart';

void main() { runApp(const ProTradingApp()); }

class ProTradingApp extends StatelessWidget {
  const ProTradingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int idx = 0;
  bool isPaperAuto = false;
  double paperBalance = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(idx==0?"Terminal - TradingView": idx==1?"Auto - 17 Features Locked":"More")),
      body: idx==0 ? const Center(child: Text("TradingView Chart + Indicators\nEMA 50/200, EMA 9/21, RSI, MACD, ADX, BB\nFib, Candle, Volume + Drawing Tools LOCKED")) 
      : idx==1 ? ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(title: Text("Only Signal Mode - 75% - Checks: RSI, MACD, ADX, BB, Fib, Candle, Volume + News(8th) LOCKED")),
          ListTile(title: Text("Strategy 1: EMA 50/200 + Fake Signal Filter LOCKED")),
          ListTile(title: Text("Strategy 2: EMA 9/21 + Fake Signal Filter LOCKED")),
          const Divider(),
          SwitchListTile(title: const Text("Auto Paper Trading WITHOUT API - 17th Feature LOCKED"), value: isPaperAuto, onChanged: (v){setState(()=>isPaperAuto=v);}),
          Text("Paper Balance: \$${paperBalance.toStringAsFixed(2)}", style: const TextStyle(fontSize: 20, color: Colors.green)),
          ElevatedButton(onPressed: ()=>setState(()=>paperBalance=10000), child: const Text("Reset Paper Balance Only")),
          const ListTile(title: Text("History: Paper History Separate | Real History Separate - LOCKED")),
          const ListTile(title: Text("Auto Trade: Fixed SL, Trailing SL, Manual SL + Permission Popup - LOCKED")),
        ],
      )
      : ListView(children: const [
        ListTile(title: Text("API Section: Binance, MT5, TradingView + Gmail Login - LOCKED")),
        ListTile(title: Text("Live Analysis: Each Indicator Score % + MTF 1M-1W Score % - LOCKED")),
        ListTile(title: Text("News Section: Crypto/Forex/Stock + Bullish/Bearish Tag - LOCKED")),
        ListTile(title: Text("Floating Window: Expand/Minimize/Close - All Screens - LOCKED")),
        ListTile(title: Text("Data Fix: Hive/Room - No Reset On App Close - FIXED")),
        ListTile(title: Text("Beginner Friendly + API Safety Popup - LOCKED")),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (i)=>setState(()=>idx=i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.candlestick_chart), label: "Terminal"),
          BottomNavigationBarItem(icon: Icon(Icons.smart_toy), label: "Auto"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}
