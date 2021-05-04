import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home:MyHomePage() ,));
 
	
 
class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 
 String page = "mm ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
    backgroundColor: Colors.black,
    elevation: 20,
    
        title: Text("Drawer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      
        centerTitle: true,
  
        //SizedBox(width: 10.0,), 

      ),
  body: Center(
    child:Text("$page",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.black))
  ),
  drawer: Drawer(
    child:ListView(
children:<Widget>[
  DrawerHeader(
child:Column(children: [
  Expanded(child: 
  Image.network("https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",width:200),),
  Text("Flutter",style:TextStyle(fontSize: 20,color: Colors.white)),
],
),
decoration: BoxDecoration(color: Colors.blue),
  ),
  ListTile(
title: Text("Profile"),
leading: Icon(Icons.account_circle),
onTap: (){
    Navigator.pop(context);
    setState(() {
        page = "Profile";

    });
},
  ),
  ListTile(
title: Text("Settings"),
leading: Icon(Icons.settings),
onTap: (){
  Navigator.pop(context);
  setState(() {
      page = "Settings";

  });
},
  ),
    ListTile(
title: Text("LogOut"),
leading: Icon(Icons.exit_to_app),
onTap: (){

    Navigator.pop(context);
setState(() {
  page = "LogOut";
});
},
  ),

],
    ),
  ),
    



    );
 }

}

