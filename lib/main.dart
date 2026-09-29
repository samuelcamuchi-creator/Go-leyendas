 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:Inicio()));

class Inicio extends StatelessWidget{
@override
Widget build(BuildContext c){return Scaffold(backgroundColor:Colors.black,body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
Icon(Icons.local_taxi,size:80,color:Colors.yellow),
Text('LEYENDAS GO',style:TextStyle(color:Colors.white,fontSize:32,fontWeight:FontWeight.bold)),
Container(margin:EdgeInsets.only(top:10),padding:EdgeInsets.all(12),color:Colors.yellow,child:Text('ALIAS: Chapa.871',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),
SizedBox(height:40),
ElevatedButton(style:ElevatedButton.styleFrom(minimumSize:Size(200,50)),onPressed:(){Navigator.push(c,MaterialPageRoute(builder:(_)=>PantallaPasajero()));},child:Text('SOY PASAJERO')),
SizedBox(height:20),
ElevatedButton(style:ElevatedButton.styleFrom(minimumSize:Size(200,50),backgroundColor:Colors.yellow),onPressed:(){Navigator.push(c,MaterialPageRoute(builder:(_)=>PantallaConductor()));},child:Text('SOY CONDUCTOR',style:TextStyle(color:Colors.black))),
])));}}

class PantallaPasajero extends StatelessWidget{
@override
Widget build(BuildContext c){return Scaffold(backgroundColor:Colors.white,appBar:AppBar(title:Text('Pedir viaje'),backgroundColor:Colors.black),body:Padding(padding:EdgeInsets.all(20),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
Icon(Icons.map,size:100,color:Colors.black26),
Text('¿A dónde vas?',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
SizedBox(height:20),
TextField(decoration:InputDecoration(prefixIcon:Icon(Icons.my_location),labelText:'Origen - Ej: Plaza 25 de Mayo',border:OutlineInputBorder())),
SizedBox(height:15),
TextField(decoration:InputDecoration(prefixIcon:Icon(Icons.location_on),labelText:'Destino - Ej: Terminal',border:OutlineInputBorder())),
SizedBox(height:30),
SizedBox(width:double.infinity,height:55,child:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.black),onPressed:(){
ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text('Buscando conductor cerca...')));},child:Text('PEDIR AUTO AHORA - \$1500',style:TextStyle(fontSize:18,color:Colors.yellow)))),
])));}}

class PantallaConductor extends StatelessWidget{
@override
Widget build(BuildContext c){return Scaffold(appBar:AppBar(title:Text('Viajes disponibles'),backgroundColor:Colors.black),body:ListView(children:[
ListTile(leading:Icon(Icons.person),title:Text('Pasajero a 200m'),subtitle:Text('De: Centro -> A: La Chacarita - \$1800'),trailing:ElevatedButton(onPressed:(){},child:Text('Aceptar')),),
Divider(),
ListTile(leading:Icon(Icons.person),title:Text('Pasajero a 500m'),subtitle:Text('De: Alto Fariñango -> A: UNCA - \$1500'),trailing:ElevatedButton(onPressed:(){},child:Text('Aceptar')),),
])));}}
