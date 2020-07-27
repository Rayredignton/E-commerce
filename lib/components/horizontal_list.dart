import 'package:flutter/material.dart';

class  HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/carts/tshirt.png',
            imageCaption: 'Shirt' ,
          ),
          Category(
            imageLocation: 'assets/carts/dress.png',
            imageCaption: 'Dress' ,
          ),
          
          Category(
            imageLocation: 'assets/carts/jeans.png',
            imageCaption:'Pants' ,
          ),
          Category(
            imageLocation: 'assets/carts/shoe.png',
            imageCaption: 'Shoe' ,
          ),
          Category(
            imageLocation: 'assets/carts/formal.png',
            imageCaption: 'Formal' ,
          ),
          Category(
            imageLocation: 'assets/carts/informal.png',
            imageCaption: 'Informal' ,
          ),
          Category(
            imageLocation: 'assets/carts/accessories.png',
            imageCaption: 'Accessories' ,
          ),
        ],
      )
      
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

Category({
  this.imageLocation,
  this.imageCaption
});

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
    child: ListTile(
      title: Image.asset(
        imageLocation,
        width: 100.0,
        height: 80.0,
        ),
      subtitle:
      Container(
        alignment: Alignment.topCenter,
      child: Text(imageCaption, style: new TextStyle(fontSize: 12.0),),
       ),
    )
    ),
    ),
    );
  }
}