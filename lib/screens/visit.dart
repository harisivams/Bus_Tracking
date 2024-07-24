/*
import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(
    new MaterialApp(
      home: visitState(),
      debugShowCheckedModeBanner: false,
      routes: {
        GridViewDemo.route: (context) => GridViewDemo(),
        AnotherDemo.route: (context) => AnotherDemo(),
      },
    ),
  );
}
*/
class visitState extends StatefulWidget {
  @override
  _visitState createState() => _visitState();
}

class _visitState extends State<visitState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Study Plan"),
        backgroundColor: Colors.amber,
      ),
      body: Container( child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            MyMenu(
              title: "Records",
              icon: Icons.account_balance_wallet,
              shape: Colors.brown,
              route: GridViewDemo.route
            ),
            MyMenu(
              title: "Academy",
              icon: Icons.account_balance,
              shape: Colors.grey,
              route: AnotherDemo.route
            ),
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
      margin: EdgeInsets.all(9.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        splashColor: Colors.amberAccent,
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
class GridViewDemo extends StatelessWidget {
  static String route = '/demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(title: Text('Grid view demo')),
      body: Center(
        child: Text('Grid view demo'),
      ),
    );
  }
}

class AnotherDemo extends StatelessWidget {
  static String route = '/another';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Another demo')),
      body: Center(
        child: Text('Another demo'),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class visit extends StatefulWidget {
  const visit({Key? key}) : super(key: key);

  @override
  State<visit> createState() => _visitState();
}

class _visitState extends State<visit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
      backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text('KNCET'),
        ),
       //
        


//
    );
  }
} */ */