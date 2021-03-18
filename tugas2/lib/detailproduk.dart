import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class isiProduk extends StatelessWidget {
  isiProduk({Key key, this.name, this.price, this.image, this.star});
  final String name;
  final String price;
  final String image;
  final String star;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(name),
        backgroundColor: Colors.green[700],
        actions: [
          Icon(
            Icons.shopping_cart,
            size: 35,
          )
        ],
      ),
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[new Image.asset("assets/images/" + image)],
            ),
            Container(
              color: Colors.green[700],
              padding: EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      "Rp. $price",
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  ),
                  Row(children: <Widget>[
                    Text(
                      "Rating :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      star,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              color: Colors.green[200],
              onPressed: () {},
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add_shopping_cart_outlined),
            ),
            RaisedButton(
              color: Colors.green[200],
              onPressed: () {},
              padding: EdgeInsets.all(10),
              child: Text("Beli sekarang"),
            ),
          ],
        ),
      ),
    );
  }
}
