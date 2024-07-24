import 'package:flutter/material.dart';

class bus2 extends StatelessWidget {
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

