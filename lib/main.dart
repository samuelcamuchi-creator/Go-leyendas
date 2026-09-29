import 'package:flutter/material.dart';
void main(){runApp(LeyendasGo());}
class LeyendasGo extends StatelessWidget{
@override
Widget build(BuildContext context){
return MaterialApp(
debugShowCheckedModeBanner:false,
home:Scaffold(
backgroundColor:Colors.black,
body:Center(
child:Column(
mainAxisAlignment:MainAxisAlignment.center,
children:[
Icon(Icons.local_taxi,size:80,color:Colors.yellow),
SizedBox(height:20),
Text('LEYENDAS GO',style:TextStyle(color:Colors.white,fontSize:32,fontWeight:FontWeight.bold)),
SizedBox(height:10),
Container(padding:EdgeInsets.all(12),color:Colors.yellow,child:Text('ALIAS: Chapa.871',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),
SizedBox(height:40),
ElevatedButton(onPressed:(){},child:Text('SOY PASAJERO')),
SizedBox(height:20),
ElevatedButton(onPressed:(){},child:Text('SOY CONDUCTOR')),
]))));}}
