import 'package:app_1/screens/busdetail.dart';
import 'package:app_1/screens/signin.dart';
import 'package:app_1/screens/visit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/maps.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
        GridViewDemo.route: (context) => GridViewDemo(),
        HomePage.route: (context) => HomePage(),
      },
      title: 'KNCET_CBT',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
     
    );
  }
}
/*
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
            <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
            <uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION"/>

*/