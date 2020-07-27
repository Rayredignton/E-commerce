import 'package:flutter/material.dart';
import 'package:App/components/cartProducts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('RayStores'),
        actions: <Widget>[
          //search icon
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar:  Container(
        color: Colors.white,
        child:  Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total: "),
              subtitle: Text("\$230"),
            ),),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("check out",style: TextStyle(color: Colors.white),),
            color: Colors.deepPurple,
            
            ),)
          ],
        ),
      ),
    );
  }
}