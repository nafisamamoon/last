import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class tok extends StatefulWidget {
  const tok({ Key? key }) : super(key: key);

  @override
  _tokState createState() => _tokState();
}

class _tokState extends State<tok> {
  grttoken()async{
    await Firebase.initializeApp();
      FirebaseMessaging.instance.getToken().then((value){
print(';;;;;;;;;;;;;;;;;;;;');
print(value);
    });
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
}