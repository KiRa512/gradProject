import 'package:flutter/material.dart';
import 'CartProducts.dart';


class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Cart'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: CartProducts(

      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text('Total:'),
                  subtitle: Text('\$120',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Check Out',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
