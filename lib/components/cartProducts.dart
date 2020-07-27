import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "louis vuitton",
      "picture": "assets/products/3.jpg",
      "price": 50,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Shoe",
      "picture": "assets/products/blazer1.jpeg",
      "price": 150,
      "size": "L",
      "color": "Red",
      "quantity": 2,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartProdName: productsOnTheCart[index]["name"],
          cartProdColor: productsOnTheCart[index]["color"],
          cartProdSize: productsOnTheCart[index]["size"],
          cartProdQty: productsOnTheCart[index]["quantity"],
          cartProdPrice: productsOnTheCart[index]["price"],
          cartProdPicture: productsOnTheCart[index]["picture"],
        );
      },
      itemCount: productsOnTheCart.length,
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartProdName;
  final cartProdPicture;
  final cartProdSize;
  final cartProdColor;
  final cartProdQty;
  final cartProdPrice;

  SingleCartProduct(
      {this.cartProdName,
      this.cartProdPicture,
      this.cartProdPrice,
      this.cartProdColor,
      this.cartProdQty,
      this.cartProdSize});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
      //====================Leading section=======
       leading: Image.asset(cartProdPicture, width: 80.0,height: 80.0 ,),
          // =======Title Section==========
          
          title: Text(cartProdName),
          //===== subtitle section ============
          subtitle: Column(
            children: [
              //Row inside Column
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Size:"),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        cartProdSize,
                        style: TextStyle(color: Colors.red),
                      )),
                  // ==========this section of for the product color=============
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                      child: Text("color:")),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(cartProdColor),
                  ),
                ],
              ),
              // ==========this section of for the product Price=============

              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "\₦$cartProdPrice",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
            ],
          ),
          trailing: Column(
            children: [
              IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
              Text("$cartProdQty"),
              IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),
            ],
          )
          ),
    );
  }
}
