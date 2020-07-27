import 'package:flutter/material.dart';
import 'package:App/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Watch",
      "picture": "assets/products/1.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "louis vuitton",
      "picture": "assets/products/3.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Shoe",
      "picture": "assets/products/2.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Jordans",
      "picture": "assets/products/4.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Balenciaga",
      "picture": "assets/shoes/60.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Air Jordans",
      "picture": "assets/shoes/40.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Nike ",
      "picture": "assets/shoes/70.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Jordan",
      "picture": "assets/shoes/80.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "M2k tekno",
      "picture": "assets/shoes/90.jpg",
      "old_price": 120,
      "price": 50,
    },
    {
      "name": "Skirt",
      "picture": "assets/products/skt1.jpeg",
      "old_price": 120,
      "price": 50,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProd(
          productName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old_price'],
          prodPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final productName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SingleProd({
    this.productName,
    this.prodPicture,
    this.prodOldPrice,
    this.prodPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("productNa me"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  //passing valuesof product
                  builder: (context) => ProductDetails(
                        productDetailName: productName,
                        productDetailPrice: prodPrice,
                        productDetailOldPrice: prodOldPrice,
                        productDetailPicture: prodPicture,
                      ))),
              child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            productName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "\‎₦$prodPrice",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    )),
                child: Image.asset(
                  prodPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
