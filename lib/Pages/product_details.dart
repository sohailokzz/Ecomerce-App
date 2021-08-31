import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecom/Pages/home.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails(
      {this.prod_detail_name,
      this.prod_detail_pic,
      this.prod_detail_oldPrice,
      this.prod_detail_newPrice});
  final prod_detail_name;
  final prod_detail_pic;
  final prod_detail_oldPrice;
  final prod_detail_newPrice;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            child: Text(
              'Ecom',
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.prod_detail_pic,
                  fit: BoxFit.contain,
                ),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prod_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_oldPrice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_newPrice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                            fontSize: 20.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the size Please'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.red,
                width: 5,
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Color'),
                          content: Text(
                            'Choose the Your Favourite Please',
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.red,
                width: 5,
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Quantity'),
                          content: Text(
                            'Choose the Number Of Quantity Please',
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: Text('Buy Now'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.redAccent,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.redAccent,
                ),
                onPressed: () {
                  Icon(Icons.favorite);
                },
              )
            ],
          ),
          ListTile(
            title: Text(
              'Product Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Description:\nLorem Ipsum is simply dummy text of the printing and typesetting industry. '
              'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
              ' when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
              ' It has survived not only five centuries, but also the leap into '
              'electronic typesetting, remaining essentially unchanged. '
              'It was popularised in the 1960s with the release of Letraset sheets'
              'containing Lorem Ipsum passages, and more recently with '
              'desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            color: Colors.redAccent,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(13.0, 3.0, 5.0, 5.0),
                child: Text(
                  'Product Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.prod_detail_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(13.0, 3.0, 5.0, 5.0),
                child: Text(
                  'Product Brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Brand X',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(13.0, 3.0, 5.0, 5.0),
                child: Text(
                  'Product Condition',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'New',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.redAccent,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Samilar Product',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 360.0,
            child: Samilar_Products(),
          ),
        ],
      ),
    );
  }
}

class Samilar_Products extends StatefulWidget {
  @override
  _Samilar_ProductsState createState() => _Samilar_ProductsState();
}

class _Samilar_ProductsState extends State<Samilar_Products> {
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
      scrollDirection: Axis.vertical,
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Samilar_Single_Product(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_oldPrice: product_list[index]['old price'],
          prod_price: product_list[index]['prod price'],
        );
      },
    );
  }
}

class Samilar_Single_Product extends StatelessWidget {
  Samilar_Single_Product(
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
