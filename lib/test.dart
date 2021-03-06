import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mylibarary/admin-home.dart';

class test extends StatefulWidget {
  //const test({ Key? key }) : super(key: key);
int? age;
String? name,path,phone,address,qualificatios;
test({this.name,this.path,this.phone,this.age,this.address,this.qualificatios});
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Container(
        
               margin: EdgeInsets.only(top: 10),
        
               child: CircleAvatar(
        
                 radius: 90,
        
                 backgroundImage: CachedNetworkImageProvider('http://192.168.209.189:8000/uploads/'+widget.path!)),
        
               ),
                   SizedBox(height: 15,),
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
        
        
              SizedBox(height: 12,),
              
                   Container(
                      
                     child: Card(
                       child: ListTile(
                       leading: Icon(Icons.phone
                       ,color: Colors.teal,
                       ),
                       title:Text('Phone number',style: TextStyle(color: Colors.grey)),
                       subtitle: Text(widget.phone!,style: TextStyle(color: Colors.black)),
                       ),
                     ),
                     ),
        SizedBox(height: 15,),
                  Container(
                      
                     child: Card(
                       child: ListTile(
                       leading: Icon(Icons.description
                       ,color: Colors.teal,
                       ),
                       title:Text('Qualifications',style: TextStyle(color: Colors.grey)),
                       subtitle: Text(widget.qualificatios!,style: TextStyle(color: Colors.black)),
                       ),
                     ),
                     ),
        SizedBox(height: 12,),
              
           SizedBox(height: 12,),
              
                   Container(
                      
                     child: Card(
                       child: ListTile(
                       leading: Icon(Icons.home
                       ,color: Colors.teal,
                       ),
                       title:Text('Home address',style: TextStyle(color: Colors.grey)),
                       subtitle: Text(widget.address!,style: TextStyle(color: Colors.black)),
                       ),
                     ),
                     ),
         SizedBox(height: 12,),
              
              Container(
                      
                     child: Card(
                       child: ListTile(
                       leading: Icon(Icons.calculate
                       ,color: Colors.teal,
                       ),
                       title:Text('Age',style: TextStyle(color: Colors.grey)),
                       subtitle: Text(widget.age.toString(),style: TextStyle(color: Colors.black)),
                       ),
                     ),
                     ),
             SizedBox(height: 12,),
             ElevatedButton(
                      onPressed:(){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminHome()));    
                      },
                      child: Text('Back',
                      style: TextStyle(fontSize: 30,wordSpacing: 2,fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal[300],
                        fixedSize: Size(250, 70),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                      )
                      
            ],
          ),
        ),
      ) ,

    );
  }
}