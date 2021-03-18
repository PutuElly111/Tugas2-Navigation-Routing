import 'package:flutter/material.dart';
import 'package:tugas2/home.dart';

class Dasborad extends StatefulWidget {
  @override
  _DasboradState createState() => _DasboradState();
}

class _DasboradState extends State<Dasborad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dasboard"),
        backgroundColor: Colors.green[400],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Putu Elly"),
              accountEmail: new Text("suchahyanielly@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[700],
              ),
            ),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(
              height: 2,
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.green[50],
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext) => new Home(),
                            ),
                          ),
                          splashColor: Colors.green,
                          child: Column(children: <Widget>[
                            Icon(
                              Icons.home_outlined,
                              color: Colors.grey,
                              size: 70,
                            ),
                            Text("Home",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          ]),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext) => About(),
                            ),
                          ),
                          splashColor: Colors.green,
                          child: Column(children: <Widget>[
                            Icon(
                              Icons.info_outline_rounded,
                              color: Colors.grey,
                              size: 70,
                            ),
                            Text("About",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[500],
          title: Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Container(
          child: Text(
              "Apliksi yang membantu pengguna untuk mencari menemukan Sepatu idamannya dengan mudah dan cepat"),
        ));
  }
}
