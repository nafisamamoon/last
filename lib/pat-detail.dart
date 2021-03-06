import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:mylibarary/edit-patient-doctor.dart';
import 'package:mylibarary/login.dart';

class PatDetail extends StatefulWidget {
  //const PatDetail({ Key? key }) : super(key: key);
int? id;
int? age;
String? name,address,diagnosis,path,patient_phone_number,patient_companion_phone_number;
PatDetail({this.id,this.age,this.name,this.address,this.diagnosis,this.path,this.patient_companion_phone_number,this.patient_phone_number});
  @override
  _PatDetailState createState() => _PatDetailState();
}

class _PatDetailState extends State<PatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.teal,
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            children: [
                Container(
                 // width:300,
                 // color: Colors.teal,
                           margin: EdgeInsets.only(top: 10),
                
                           child: CircleAvatar(
                
                 radius: 90,
                
                 backgroundImage: CachedNetworkImageProvider('http://192.168.209.189:8000/uploads/'+widget.path!)),
                
                           ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                         /*  Container(
                 
                   margin: EdgeInsets.only(right: 340),
                 
                   child: Text('Name',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
                 
                 ),*/
                 
                 SizedBox(height: 12,),
                 Container(
                  
                 child: Card(
                   child: ListTile(
                   leading: Icon(Icons.person
                   ,color: Colors.teal,
                   ),
                    title:Text('Name',style: TextStyle(color: Colors.grey)),
                   subtitle: Text(widget.name!,style: TextStyle(color: Colors.black)),
                   ),
                 ),
                 ),
                 
                 /* Container(
                 
                   margin: EdgeInsets.only(right: 340),
                 
                   child: Text('Age',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
                 
                 ),*/
                 
              
                 Container(
                 child: Card(
                   child: ListTile(
                   leading: Icon(Icons.calculate ,color: Colors.teal,),
                    title:Text('Age',style: TextStyle(color: Colors.grey)),
                   subtitle: Text(widget.age.toString(),style: TextStyle(color: Colors.black)),
                   ),
                 ),
                 ),
                 /*Container(
                 
                   margin: EdgeInsets.only(right: 340),
                 
                   child: Text('Address',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
                 
                 ),*/
                 
                 SizedBox(height: 12,),
                 
                    Container(
                 child: Card(
                   child: ListTile(
                   leading: Icon(Icons.home ,color: Colors.teal,),
                    title:Text('Home address',style: TextStyle(color: Colors.grey)),
                   subtitle: Text(widget.address!,style: TextStyle(color: Colors.black)),
                   ),
                 ),
                 ),
                 /*Container(
                 
                   margin: EdgeInsets.only(right: 340),
                 
                   child: Text('Diagnosis',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
                 
                 ),*/
                 
                 SizedBox(height: 12,),
                 
                 Container(
                 child: Card(
                   child: ListTile(
                   leading: Icon(Icons.description ,color: Colors.teal,),
                    title:Text('Diagnosis',style: TextStyle(color: Colors.grey)),
                   subtitle: Text(widget.diagnosis!,style: TextStyle(color: Colors.black)),
                   ),
                 ),
                 ),
                    /* Container(
                 
                   margin: EdgeInsets.only(right: 340),
                 
                   child: Text('patient_phone_number',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
                 
                 ),*/
                 
                 SizedBox(height: 12,),
                 
                 Container(
                 child: Card(
                   child: ListTile(
                   leading: Icon(Icons.mobile_friendly ,color: Colors.teal,),
                    title:Text('Patient_phone_number',style: TextStyle(color: Colors.grey)),
                   subtitle: Text(widget.patient_phone_number!,style: TextStyle(color: Colors.black)),
                   ),
                 ),
                 ),
                    SizedBox(height: 12,),
                    /*  Container(
                 
                   margin: EdgeInsets.only(right: 340),
                 
                   child: Text('patient_companion_phone_number',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),),
                 
                 ),*/
                 
                 SizedBox(height: 12,),
                 
                 Container(
                 child: Card(
                   child: ListTile(
                   leading: Icon(Icons.phone_android_rounded ,color: Colors.teal,),
                    title:Text('Patient_companion_phone_number',style: TextStyle(color: Colors.grey)),
                   subtitle: Text(widget.patient_companion_phone_number!,style: TextStyle(color: Colors.black)),
                   ),
                 ),
                 ),
               ],
             ),
             SizedBox(height: 18,),
             ElevatedButton(
                    /*  onPressed:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditPatient(
          id: widget.id,name: widget.name,address: widget.address,age: widget.age,diagnosis: widget.diagnosis,
          patient_phone_number: widget.patient_phone_number,patient_companion_phone_number: widget.patient_companion_phone_number,
        )));                   
                      },*/
                       onPressed:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditPatientDoctor(
       id:widget.id,
           diagnosis:widget.diagnosis,                  
                       )));
                      },
                      child: Text('Edit',
                      style: TextStyle(fontSize: 30,wordSpacing: 2,fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal[300],
                        fixedSize: Size(250, 70),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                      ),
                      SizedBox(height: 18,),
             ElevatedButton(
                      onPressed:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login()));                   
                      },
                      child: Text('Back',
                      style: TextStyle(fontSize: 30,wordSpacing: 2,fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        fixedSize: Size(250, 70),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                      ),
                      
            ],
          ),
        ),
      ),
    );
  }
}