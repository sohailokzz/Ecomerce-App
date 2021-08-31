import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom/Pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/blazer1.jpeg",
      "old price": "100",
      "prod price": "80"
    },
    {
      "name": "Red Dress",
      "picture": "images/dress1.jpeg",
      "old price": "100",
      "prod price": "80"
    },
    {
      "name": "Pants",
      "picture": "images/pants1.jpg",
      "old price": "100",
      "prod price": "80"
    },
    {
      "name": "Hills",
      "picture": "images/hills1.jpeg",
      "old price": "120",
      "prod price": "90"
    },
    {
      "name": "Shoes",
      "picture": "images/shoe1.jpg",
      "old price": "100",
      "prod price": "80"
    },
    {
      "name": "Skit",
      "picture": "images/skt1.jpeg",
      "old price": "100",
      "prod price": "80"
    },
    {
      "name": "Skit",
      "picture": "images/skt2.jpeg",
      "old price": "130",
      "prod price": "80"
    },
    {
      "name": "Blazer",
      "picture": "images/blazer2.jpeg",
      "old price": "200",
      "prod price": "160"
    },
    {
      "name": "Pants",
      "picture": "images/pants2.jpeg",
      "old price": "100",
      "prod price": "80"
    },
    {
      "name": "Pants",
      "picture": "images/pants1.jpg",
      "old price": "100",
      "prod price": "80"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_Product(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_oldPrice: product_list[index]['old price'],
          prod_price: product_list[index]['prod price'],
        );
      },
    );
  }
}

class Single_Product extends StatelessWidget {
  Single_Product(
      {this.prod_name, this.prod_picture, this.prod_oldPrice, this.prod_price});

  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('Hero 1'),
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    prod_detail_name: prod_name,
                    prod_detail_pic: prod_picture,
                    prod_detail_oldPrice: prod_oldPrice,
                    prod_detail_newPrice: prod_price,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "\$${prod_price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
