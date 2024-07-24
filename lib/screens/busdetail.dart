
import 'package:app_1/buses/bs1.dart';
import 'package:app_1/buses/bs2.dart';
import 'package:app_1/screen2/10screen.dart';
import 'package:app_1/screen2/4screen.dart';
import 'package:app_1/screen2/5screen.dart';
import 'package:app_1/screen2/6screen.dart';
import 'package:app_1/screen2/7screen.dart';
import 'package:app_1/screen2/8screen.dart';
import 'package:app_1/screen2/9screen.dart';
import 'package:flutter/material.dart';

import '../screen2/3screen.dart';
import '../screen2/firstscreen.dart';
import '../screen2/secondscreen.dart';
/*
class GridViewDemo extends StatelessWidget {
  static String route = '/GridViewDemo';



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView Navigation I',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListView(),
    );
  }  
} */
    class GridViewDemo extends StatelessWidget {
      static String route = '/GridViewDemo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buses'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('No.1 -- Trichy'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen1(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('No.2 --Namakal'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('No.3 --Karur'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen3(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('No.4 --Thottiyam'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen4(),
                ),
              );
            },
          ),ListTile(
            title: Text('No.5 --KolaKkudi'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen5(),
                ),
              );
            },
          ),ListTile(
            title: Text('No.6 -- Rasipuram'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen6(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('No.7 --Mayanur'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen7(),
                ),
              );
            },
          ),ListTile(
            title: Text('No.8 --Musiri'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen8(),
                ),
              );
            },
          ),ListTile(
            title: Text('No.9 -- Anbil'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen9(),
                ),
              );
            },
          ),ListTile(
            title: Text('No.10 -- Thuraiyur'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen10(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

    /* Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(title: Text('Bus Details')),
       body: Container( child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            MyMenu(
              title: "NO.1-Trichy",
              icon: Icons.directions_bus,
              shape: Colors.green,
              route: bus1.route
            ),
            MyMenu(
              title: "NO.2-Namakal",
              icon: Icons.directions_bus,
              shape: Colors.green,
              route: bus2.route
            ),
          /*  MyMenu(
              title: "NO.3-Thuraiyur",
              icon: Icons.directions_bus,
              shape: Colors.green,
              route: bus13.route
            ),MyMenu(
              title: "NO.4-kulithalai",
              icon: Icons.directions_bus,
              shape: Colors.green,
              route: bus4.route
            ),
            MyMenu(
              title: "NO.5-Karur",
              icon: Icons.directions_bus,
              shape: Colors.green,
              route: bus05.route
            ), */
          ],
        ),
      ),
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
      margin: EdgeInsets.all(3.0),
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
   
} */