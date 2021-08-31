import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/blazer1.jpeg",
      "prod price": "80",
      "size": "M",
      "color": "Red",
      "qauntity": "2"
    },
    {
      "name": "Red Dress",
      "picture": "images/dress1.jpeg",
      "prod price": "80",
      "size": "M",
      "color": "White",
      "qauntity": "2"
    },
    {
      "name": "Pants",
      "picture": "images/pants1.jpg",
      "old price": "100",
      "prod price": "80",
      "size": "M",
      "color": "Blue",
      "qauntity": "2"
    },
    {
      "name": "Hills",
      "picture": "images/hills1.jpeg",
      "prod price": "90",
      "size": "M",
      "color": "Green",
      "qauntity": "2"
    },
    {
      "name": "Shoes",
      "picture": "images/shoe1.jpg",
      "prod price": "80",
      "size": "M",
      "color": "Orange",
      "qauntity": "2"
    },
    {
      "name": "Skit",
      "picture": "images/skt1.jpeg",
      "prod price": "80",
      "size": "M",
      "color": "Grey",
      "qauntity": "2"
    },
    {
      "name": "Skit",
      "picture": "images/skt2.jpeg",
      "prod price": "80",
      "size": "M",
      "color": "Black",
      "qauntity": "2"
    },
    {
      "name": "Blazer",
      "picture": "images/blazer2.jpeg",
      "prod price": "160",
      "size": "M",
      "color": "Red",
      "qauntity": "2"
    },
    {
      "name": "Pants",
      "picture": "images/pants2.jpeg",
      "prod price": "80",
      "size": "M",
      "color": "Red",
      "qauntity": "2"
    },
    {
      "name": "Pants",
      "picture": "images/pants1.jpg",
      "prod price": "80",
      "size": "M",
      "color": "Red",
      "qauntity": "2"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder: (context, index) {
        return SingleCartProd(
          cart_prod_name: product_on_the_cart[index]["name"],
          cart_prod_picture: product_on_the_cart[index]["picture"],
          cart_prod_price: product_on_the_cart[index]["prod price"],
          cart_prod_size: product_on_the_cart[index]["size"],
          cart_prod_color: product_on_the_cart[index]["color"],
          cart_prod_qty: product_on_the_cart[index]["qauntity"],
        );
      },
    );
  }
}

class SingleCartProd extends StatelessWidget {
  SingleCartProd(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: Column(
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        leading: Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(
          cart_prod_name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Size:',
                ),
                Text(
                  cart_prod_size,
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 8.0),
                  child: Text(
                    'Color:',
                  ),
                ),
                Text(
                  cart_prod_color,
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '\$$cart_prod_price',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Quantity:',
                  ),
                ),
                Text(
                  cart_prod_qty,
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
