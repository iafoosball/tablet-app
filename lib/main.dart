import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iafoosball_tablet/livegame.dart';
import 'package:iafoosball_tablet/globals.dart' as globals;

void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Livegame(tableID: globals.table_id),
    );
  }
}
