import 'package:flutter/material.dart';
import 'package:travelapp/Screens/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Metropolis',
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
