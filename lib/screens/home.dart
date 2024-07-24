
 import 'package:app_1/screens/signin.dart';
import 'package:app_1/screens/visit.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'busdetail.dart';
import 'maps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final List<String>_listItem=[
    'assets/images/logo1.jpg',
    'assets/images/logo2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("KNCET - CB"),
        backgroundColor: Color.fromARGB(255, 58, 245, 67),
      ),
      body: Container( child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
           MyMenu(
              title: "Buses ",
              icon: Icons.directions_bus,
              shape: Colors.green,
              route: GridViewDemo.route
            ),
            MyMenu(
              title: "Maps",
              icon: Icons.map,
              shape: Colors.green,
              route: HomePage.route
            ),
          ],
        ),
      ),
      //drawer
        drawer: Drawer(elevation: 16.0,
        child: Column(
          children:<Widget> [
            UserAccountsDrawerHeader(accountName:Text ('KNCET'),
             accountEmail:Text ('kncet@gmail.com'),
             ),
             ListTile(
              title: Text('KNCET'),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen ())); //about page try changes
              },
             ),
             Divider(
              height: 0.1,
             ), 
             ListTile(
              title: Text('about'),
              leading: Icon(Icons.person),
             ),
             Divider(
              height: 0.1,
             ),
              ListTile(
              title: Text('logout'),
              leading: Icon(Icons.logout),
              onTap:() {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed Out");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen())); 
            });
          }, 
              ), ], 
        ), ),
        );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({ required this.title,required this.icon, required this.shape, required this.route});

  final String title;
  final IconData icon;
  final MaterialColor shape;
   final String route;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(9.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        splashColor: Color.fromARGB(255, 118, 255, 64),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 80.0,
                color: shape,
              ),
              Text(title, style: new TextStyle(fontSize: 18.0))
            ],
          ),
        ),
      ),
    );

  }
  
}











