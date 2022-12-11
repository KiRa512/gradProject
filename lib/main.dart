import 'package:e_nnovation/products.dart';
import 'package:flutter/material.dart';
import 'components.dart';
import 'package:e_nnovation/pages/shopping_cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('E-NNOVATION'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingCart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // header
            UserAccountsDrawerHeader(
              accountName: Text('KiRa'),
              accountEmail: Text('khaledhamza@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTileElement(
              title: Text('Home Page'),
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            ListTileElement(
              title: Text('My Account'),
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            ListTileElement(
              title: Text('My Orders'),
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
            ),
            ListTileElement(
              title: Text('Shopping Cart'),
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingCart()));
              },
            ),
            ListTileElement(
              title: Text('Favorites'),
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            Divider(),
            ListTileElement(
              title: Text('Settings'),
              icon: Icon(
                Icons.settings,
                color: Colors.blueAccent,
              ),
            ),
            ListTileElement(
              title: Text('About'),
              icon: Icon(Icons.help),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselImages(),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Railway',
              ),
            ),
            // Horizontal List view begins here
          ),
          HorizontalList(),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Recent Products',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Railway',
              ),
            ),
          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
