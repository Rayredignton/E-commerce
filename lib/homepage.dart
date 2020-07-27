import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:App/components/horizontal_list.dart';
import 'package:App/pages/products.dart';

import 'pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/products/1.jpg'),
          AssetImage('assets/products/2.jpg'),
          AssetImage('assets/products/3.jpg'),
          AssetImage('assets/products/4.jpg'),
          AssetImage('assets/shoes/60.jpg'),
          AssetImage('assets/shoes/20.jpg'),
          AssetImage('assets/shoes/30.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 5.0,
        indicatorBgPadding: 3.0,
      ),
    );

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
          //Appping cart
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      //side drawer
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              accountName: Text('fola'),
              accountEmail: Text('fola@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shoping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite, color: Colors.deepPurple),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel begins here
          imageCarousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new Text('Categories'),
          ),
          //horizontal list begins here
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Text('New Arrivals'),
          ),
          Container(
            height: 500.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
