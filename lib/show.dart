//get last record
/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class show extends StatefulWidget {
  const show({Key? key}) : super(key: key);

  @override
  _showState createState() => _showState();
}

class _showState extends State<show> {
  
Future<Map>getDoctor() async {
    final String _url='http://iotwebsite1.000webhostapp.com/get_data.php';
var response=await http.get(Uri.parse(_url));
Map<String,dynamic> map=jsonDecode(response.body);
//print('=========================');
//print(map);
return map;
  }
  @override
  void initState() {
    getDoctor();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
             FutureBuilder(
                future: getDoctor(),
          builder: (context,AsyncSnapshot snapshot){
if(snapshot.data ==null)
{
  return Container(child: Center(child: Text('loadin'),
  ),
  );
}   else return Column(
  children: [
        Container(
    
     //color: Colors.teal,
    
      margin: EdgeInsets.only(top: 20),
    
    child: Column(
    
    children: [

                 Container(
    
      
    
                  margin: EdgeInsets.only(left: 30),
    
      
    
        child: 
    
      
    
      Text(snapshot.data['name'],style: TextStyle(fontSize: 17,wordSpacing: 2,fontWeight: FontWeight.bold),)
    
      
    
                 ),
    
                   SizedBox(height: 9,),
    
     Container(
    
      
    
                  margin: EdgeInsets.only(left: 30),
    
      
    
        child: 
    
      
    
      Text(snapshot.data['bpm'].toString(),style: TextStyle(fontSize: 17,wordSpacing: 2,fontWeight: FontWeight.bold),)
    
      
    
                 ),
    
                   SizedBox(height: 9,),
                   Container(
    
      
    
                  margin: EdgeInsets.only(left: 30),
    
      
    
        child: 
    
      
    
      Text(snapshot.data['spo'].toString(),style: TextStyle(fontSize: 17,wordSpacing: 2,fontWeight: FontWeight.bold),)
    
      
    
                 ),
            
    
    ],
    
    ),
    
    ),
   
            
  ],
);

       }
             ),
          ],
        ),
      ),
    );
  }
}

class Doctor {
  final int id, bpm, spo;
  final String name;
  Doctor(this.id, this.bpm, this.spo,this.name);
 // String toString() {
   // return 'Doctor: {id:${id},bpm:${bpm},spo:${spo},,name:${name}}';
 // }
}*/
///////////////////////////////////////////////////////////////////
//get all record
/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class show extends StatefulWidget {
  const show({Key? key}) : super(key: key);

  @override
  _showState createState() => _showState();
}

class _showState extends State<show> {
var m=6;
var i=10;
Future<Map>getDoctor() async {
    final String _url='http://iotwebsite1.000webhostapp.com/insert.php?bpm=$i&spo=$m';
var response=await http.get(Uri.parse(_url));
Map<String,dynamic> map=jsonDecode(response.body);
//print('=========================');
//print(map);
return map;
  }
  @override
  void initState() {
    getDoctor();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
             FutureBuilder(
                future: getDoctor(),
          builder: (context,AsyncSnapshot snapshot){
if(snapshot.data ==null)
{
  return Container(child: Center(child: Text('loadin'),
  ),
  );
}   else return Column(
  children: [
        Container(
    
     //color: Colors.teal,
    
      margin: EdgeInsets.only(top: 90),
    
    child: Column(
    
    children: [

                 Container(
    
      
    
                  margin: EdgeInsets.only(left: 30),
    
      
    
        child: 
    
      
    
      Text(snapshot.data['success'].toString(),style: TextStyle(fontSize: 17,wordSpacing: 2,fontWeight: FontWeight.bold),)
    
      
    
                 ),
    
                   SizedBox(height: 9,),
    
     Container(
    
      
    
                  margin: EdgeInsets.only(left: 30),
    
      
    
        child: 
    
      
    
      Text(snapshot.data['message'],style: TextStyle(fontSize: 17,wordSpacing: 2,fontWeight: FontWeight.bold),)
    
      
    
                 ),
    
                 
            
    
    ],
    
    ),
    
    ),
   
            
  ],
);

       }
             ),
          ],
        ),
      ),
    );
  }
}

class Doctor {
  final int id, bpm, spo;
  final String name;
  Doctor(this.id, this.bpm, this.spo,this.name);
 // String toString() {
   // return 'Doctor: {id:${id},bpm:${bpm},spo:${spo},,name:${name}}';
 // }
}*/
/*import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart';
import 'package:http/http.dart' as http;
class tok extends StatefulWidget {
  const tok({ Key? key }) : super(key: key);

  @override
  _tokState createState() => _tokState();
}

class _tokState extends State<tok> {
  grttoken()async{
    await Firebase.initializeApp();
    FirebaseMessagingPlatform.instance.getToken().then((value){
print(';;;;;;;;;;;;;;;;;;;;');
print(value);
    });
     /* FirebaseMessaging.instance.getToken().then((value){
print(';;;;;;;;;;;;;;;;;;;;');
print(value);
    });*/
  }
 @override
  void initState() {
  grttoken();
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}*/