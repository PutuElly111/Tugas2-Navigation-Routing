import 'package:flutter/material.dart';
//import terlebih dahulu halaman yang diperlukan
import './dashboard.dart' as dashboard;

//top level/root
void main() {
  runApp(new MaterialApp(
    title: "tab Bar",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dashboard.Dasborad(),
    );
  }
}
