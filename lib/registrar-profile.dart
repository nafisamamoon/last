import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mylibarary/edit-registrar.dart';
import 'package:mylibarary/registrar-home.dart';

class RegistrarProfile extends StatefulWidget {
  const RegistrarProfile({ Key? key }) : super(key: key);

  @override
  _RegistrarProfileState createState() => _RegistrarProfileState();
}

class _RegistrarProfileState extends State<RegistrarProfile> {
  Future<List<Registrar>>getRegistrar() async {
    final String _url='http://192.168.209.189:8000/api/getregistrar';
var response=await http.get(Uri.parse(_url));
var jsonData=jsonDecode(response.body);
List<Registrar> users=[];
for(var u in jsonData){
  Registrar user=new Registrar(u['id'],u['name'],u['email'],u['role_id'],u['address'],u['age'],u['qualifications'],u['phone_number'],u['path']);
  users.add(user);
}
print(users.length);
print(users.toString());
return users;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:  FutureBuilder(
                future: getRegistrar(),
          builder: (context,AsyncSnapshot snapshot){
if(snapshot.data ==null)
{
  return Container(child: Center(child: CircularProgressIndicator(),
  ),
  );
}   else return 
ListView.builder(
  shrinkWrap: true,
  itemCount: snapshot.data.length,
  itemBuilder: (context,i){
    var name=snapshot.data[i].name;
return Container(
  margin: EdgeInsets.only(top: 20),
  child:   Column(
  
    children: [

  
          SizedBox(height:20,),
  
          Column(
  
            children: [
  Container(
  
             margin: EdgeInsets.only(top: 10),
  
             child: CircleAvatar(
  
               radius: 90,
  
               backgroundImage: CachedNetworkImageProvider('http://192.168.209.189:8000/uploads/'+snapshot.data[i].path)),
  
             ),
           
  
               SizedBox(height: 12,),
  
      Container(
                
               child: Card(
                 child: ListTile(
                 leading: Icon(Icons.person
                 ,color: Colors.teal,
                 ),
                 title:Text('Name',style: TextStyle(color: Colors.grey)),
                 subtitle: Text(snapshot.data[i].name,style: TextStyle(color: Colors.black)),
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
                subtitle: Text(snapshot.data[i].phone,style: TextStyle(color: Colors.black)),
                 ),
               ),
               ),
            ],
  
          ),
  
        
  
      ////////////////////////
  
          SizedBox(height: 12,),
  
      Container(
                
               child: Card(
                 child: ListTile(
                 leading: Icon(Icons.description
                 ,color: Colors.teal,
                 ),
                 title:Text('Qualificatios',style: TextStyle(color: Colors.grey)),
                 subtitle: Text(snapshot.data[i].qualificatios,style: TextStyle(color: Colors.black)),
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
                 subtitle: Text(snapshot.data[i].age.toString(),style: TextStyle(color: Colors.black)),
                 ),
               ),
               ),
       SizedBox(height: 12,),
  
      Container(
                
               child: Card(
                 child: ListTile(
                 leading: Icon(Icons.email
                 ,color: Colors.teal,
                 ),
                 title:Text('E-mail',style: TextStyle(color: Colors.grey)),
                 subtitle: Text(snapshot.data[i].email,style: TextStyle(color: Colors.black)),
                 ),
               ),
               ),
  
         SizedBox(height: 12,),
  
      Container(
                
               child: Card(
                 child: ListTile(
                 leading: Icon(Icons.home
                 ,color: Colors.teal,
                 ),
                 title:Text('Address',style: TextStyle(color: Colors.grey)),
                 subtitle: Text(snapshot.data[i].address,style: TextStyle(color: Colors.black)),
                 ),
               ),
               ),
  
      SizedBox(height: 22,),
  
      /////////////////////////////
  
       ElevatedButton(
                    onPressed:(){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditRegistrar(
  id: snapshot.data[i].id,age: snapshot.data[i].age,address: snapshot.data[i].address,name: snapshot.data[i].name,
  path: snapshot.data[i].path,qual: snapshot.data[i].qualificatios, phone:snapshot.data[i].phone ,                  
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
                     SizedBox(height: 22,),
  
      /////////////////////////////
  
       ElevatedButton(
                    onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrarHome()));
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
);
  }
  );

       }
             ),
    );
  }
}
class Registrar{
  final int id,role_id,age;
  final String name,email,address,qualificatios,phone,path;
  Registrar(this.id,this.name,this.email,this.role_id,this.address,this.age,this.qualificatios,this.phone,this.path);
}