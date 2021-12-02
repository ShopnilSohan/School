import 'package:flutter/material.dart';

import 'home.dart';
void main(){
  runApp(SchoolApp());
}
class SchoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoSchool UI',
      theme: ThemeData(
        primaryColor: Color(0xFF202328),
        accentColor: Color(0xFF63CF93),
        backgroundColor: Color(0xFF12171D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Welcome(),
    );
  }
}
