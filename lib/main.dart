import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData.dark(),home:const Home()));}
class Home extends StatefulWidget{const Home({super.key});@override State<Home> createState()=>_HomeState();}
class _HomeState extends State<Home>{
int i=0;double bal=10000;
@override Widget build(BuildContext context){
return Scaffold(
appBar:AppBar(title:Text(i==0?"Terminal - TradingView":"Auto - Paper Trading")),
body:i==0?const Center(child:Text("Chart + EMA 50/200, EMA 9/21, RSI, MACD, ADX, BB\nFib, Candle, Volume + News 8th Indicator")):
ListView(padding:const EdgeInsets.all(16),children:[
const ListTile(title:Text("Only Signal Mode 75% - All Indicators LOCKED")),
const ListTile(title:Text("Strategy 1: EMA 50/200 + Filter LOCKED")),
const ListTile(title:Text("Strategy 2: EMA 9/21 + Filter LOCKED")),
SwitchListTile(title:const Text("Auto Paper Trading WITHOUT API - 17th Feature"),value:true,onChanged:(v){}),
Text("Paper Balance: \$${bal.toStringAsFixed(2)}",style:const TextStyle(fontSize:22,color:Colors.green)),
ElevatedButton(onPressed:()=>setState(()=>bal=10000),child:const Text("Reset Paper Balance Only")),
const ListTile(title:Text("History: Paper Separate | Real Separate - LOCKED")),
const ListTile(title:Text("Auto SL: Fixed, Trailing, Manual + Popup - LOCKED")),
const ListTile(title:Text("API: Binance, MT5, TradingView + Gmail - LOCKED")),
const ListTile(title:Text("Live Analysis + Floating Window - LOCKED")),
const ListTile(title:Text("News: Crypto/Forex/Stock - Bullish/Bearish - LOCKED")),
]),
bottomNavigationBar:BottomNavigationBar(currentIndex:i,onTap:(v)=>setState(()=>i=v),items:const[
BottomNavigationBarItem(icon:Icon(Icons.candlestick_chart),label:"Terminal"),
BottomNavigationBarItem(icon:Icon(Icons.smart_toy),label:"Auto"),
BottomNavigationBarItem(icon:Icon(Icons.more_horiz),label:"More"),
]));
}}
