import 'dart:convert';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:mylibarary/firebase-message.dart';
import 'package:mylibarary/get-token.dart';
import 'package:mylibarary/login.dart';

import 'package:provider/provider.dart';
//import 'package:provider/';
/*void main() {
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context)=>Auth())
      ],
      child:myapp(),
    )
  );
}
class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}*/
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
     // home: animal(),
    // home: firebasemess(),
    //home: apimessage(),
    //home: tok(),
    home:login()
    //home:tok()
    );
  }
}




