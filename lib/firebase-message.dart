import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
class firebasemess extends StatefulWidget {
  const firebasemess({ Key? key }) : super(key: key);

  @override
  _firebasemessState createState() => _firebasemessState();
}

class _firebasemessState extends State<firebasemess> {
  late final FirebaseMessaging _messaging;
  
 //FirebaseMessaging firebasemessaging=FirebaseMessaging.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    configureCallback();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
   child: Text('hi'),
    );
  }
  void configureCallback() async{
await Firebase.initializeApp();
_messaging=FirebaseMessaging.instance;
_messaging.getToken().then((value){
 // print('//////////////////////////////////');
//print('token is $value');
});
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  print('got a message');
  print('message is ${message.data}');
  if(message.notification != null){
    //body of message
    print('notification is here  ${message.notification!.body}');
  }
});
 
}
}

