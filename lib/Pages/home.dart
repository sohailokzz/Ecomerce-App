import 'package:flutter/material.dart';
import 'package:ecom/Compnents/all_componets.dart';
import 'package:ecom/Compnents/products.dart';
import 'package:ecom/Pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Online Shop'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100.0),
          ),
          child: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/m2.jpg',
                      ),
                    ),
                  ),
                  accountName: Text('Sohail Orakzai'),
                  accountEmail: Text('sohailokzz@gmail.com'),
                ),
                MyListTile(
                  title: 'HomePage',
                  icon: Icons.home,
                ),
                _buildDivider(),
                MyListTile(
                  title: 'My Account',
                  icon: Icons.person,
                ),
                _buildDivider(),
                MyListTile(
                  title: 'My Order',
                  icon: Icons.shopping_basket,
                ),
                _buildDivider(),
                MyListTile(
                  title: 'Shopping Cart',
                  icon: Icons.shopping_cart,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ),
                    );
                  },
                ),
                _buildDivider(),
                MyListTile(
                  title: 'Favourite',
                  icon: Icons.favorite,
                ),
                _buildDivider(),
                MyListTile(
                  title: 'Settings',
                  icon: Icons.settings,
                ),
                _buildDivider(),
                MyListTile(
                  title: 'About',
                  icon: Icons.help,
                ),
                _buildDivider(),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          CursalImage(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Catogory'),
          ),
          HorizentalList(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 360,
            child: Products(),
          ),
        ],
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.redAccent,
      thickness: 1.0,
    );
  }
}

class MyListTile extends StatelessWidget {
  MyListTile({this.title, this.icon, this.onPress});
  final String title;
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        color: Colors.redAccent,
      ),
      onTap: onPress,
    );
  }
}
