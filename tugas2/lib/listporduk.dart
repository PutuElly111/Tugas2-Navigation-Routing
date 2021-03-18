import 'package:flutter/material.dart';
import './detailproduk.dart' as detailproduk;

class ListProduk extends StatefulWidget {
  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Center(
            child: Text("List Produk"),
          ),
          actions: [
            Icon(
              Icons.shopping_cart,
              size: 35,
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            GestureDetector(
              child: isiproduk(
                name: "Adidas Superstar",
                price: "600.000",
                image: "adidas.jpg",
                star: "4.5",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Adidas Superstar",
                          price: "600.000",
                          image: "adidas.jpg",
                          star: "4.5",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Nike Air Max",
                price: "1.266.000",
                image: "nike.jpg",
                star: "5.0",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Nike Air Max",
                          price: "1.266.000",
                          image: "nike.jpg",
                          star: "5.0",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Ventela Public Low Yellow Dark",
                price: "350.000",
                image: "ventela.jpg",
                star: "5.4",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Ventela Public Low Yellow Dark",
                          price: "350.000",
                          image: "ventela.jpg",
                          star: "5.4",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Vans Original",
                price: "1.300.000",
                image: "vans.jpg",
                star: "5.3",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Vans Original",
                          price: "1.300.000",
                          image: "vans.jpg",
                          star: "5.3",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Fila Original White",
                price: "300.000",
                image: "fila.jpg",
                star: "4.3",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Fila Original White",
                          price: "300.000",
                          image: "fila.jpg",
                          star: "4.3",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Nike Air Jordan",
                price: "2.250.000",
                image: "jordan.png",
                star: "5.0",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Nike Air Jordan",
                          price: "2.250.000",
                          image: "jordan.png",
                          star: "5.0",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Convens Original",
                price: "986.000",
                image: "convers.jpg",
                star: "5.6",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Convens Original",
                          price: "986.000",
                          image: "convers.jpg",
                          star: "5.6",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Puma Suede Classic Bw",
                price: "550.000",
                image: "puma.png",
                star: "4.0",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Puma Suede Classic Bw",
                          price: "550.000",
                          image: "puma.png",
                          star: "4.0",
                        )));
              },
            ),
            GestureDetector(
              child: isiproduk(
                name: "Kodachi 8111 Retro",
                price: "200.000",
                image: "kodachi.webp",
                star: "3.7",
              ),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => detailproduk.isiProduk(
                          name: "Kodachi 8111 Retro",
                          price: "200.000",
                          image: "kodachi.webp",
                          star: "3.7",
                        )));
              },
            ),
          ],
        ));
  }
}

class isiproduk extends StatelessWidget {
  isiproduk({this.name, this.price, this.image, this.star});
  final String name;
  final String price;
  final String image;
  final String star;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/images/" + image,
              width: 150,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Rp. $price"),
                  Row(
                    children: <Widget>[Text("Rating : $star")],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
