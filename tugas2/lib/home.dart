import 'package:flutter/material.dart';
import 'package:tugas2/listporduk.dart';
import './beranda.dart' as beranda;
import './listporduk.dart' as listproduk;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[new beranda.Beranda(), new listproduk.ListProduk()],
        ),
        bottomNavigationBar: new Material(
          color: Colors.green[700],
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[new Tab(icon: new Icon(Icons.home)), new Tab(icon: Icon(Icons.list))],
          ),
        ));
  }
}
