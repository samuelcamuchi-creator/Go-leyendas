import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Inicio()));

class Inicio extends StatelessWidget{
@override
Widget build(BuildContext c){
return Scaffold(backgroundColor:Colors.black,body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
Icon(Icons.local_taxi,size:80,color:Colors.yellow),
SizedBox(height:20),
Text('LEYENDAS GO',style:TextStyle(color:Colors.white,fontSize:32,fontWeight:FontWeight.bold)),
SizedBox(height:10),
Container(padding:EdgeInsets.all(12),color:Colors.yellow,child:Text('ALIAS: Chapa.871',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),
SizedBox(height:40),
ElevatedButton(onPressed:(){Navigator.push(c,MaterialPageRoute(builder:(_)=>Pag(t:'SOY PASAJERO')));},child:Text('SOY PASAJERO')),
SizedBox(height:20),
ElevatedButton(onPressed:(){Navigator.push(c,MaterialPageRoute(builder:(_)=>Pag(t:'SOY CONDUCTOR')));},child:Text('SOY CONDUCTOR')),
])));}}

class Pag extends StatelessWidget{
final String t;Pag({required this.t});
@override
Widget build(BuildContext c){return Scaffold(appBar:AppBar(title:Text(t)),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Text(t,style:TextStyle(fontSize:22)),SizedBox(height:20),ElevatedButton(onPressed:(){Navigator.pop(c);},child:Text('Volver'))])));}}
