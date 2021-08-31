import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CursalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(
          milliseconds: 1000,
        ),
        dotColor: Colors.redAccent,
      ),
    );
  }
}

class HorizentalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catogory(
            image_location: 'images/tshirt.png',
            image_title: 'T-Shirt',
          ),
          Catogory(
            image_location: 'images/accessories.png',
            image_title: 'Accessories',
          ),
          Catogory(
            image_location: 'images/dress.png',
            image_title: 'Dress',
          ),
          Catogory(
            image_location: 'images/jeans.png',
            image_title: 'Jeans',
          ),
          Catogory(
            image_location: 'images/shoe.png',
            image_title: 'Shoes',
          ),
          Catogory(
            image_location: 'images/formal.png',
            image_title: 'Formal',
          ),
          Catogory(
            image_location: 'images/informal.png',
            image_title: 'Informal',
          ),
        ],
      ),
    );
  }
}

class Catogory extends StatelessWidget {
  Catogory({this.image_location, this.image_title});
  final String image_location;
  final String image_title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        child: ListTile(
          onTap: () {},
          title: Image.asset(
            image_location,
            width: 100.0,
            height: 50.0,
          ),
          subtitle: Container(
            height: 200.0,
            alignment: Alignment.topCenter,
            child: Text(
              image_title,
              style: TextStyle(
                fontSize: 8.6,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
