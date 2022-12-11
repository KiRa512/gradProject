import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [
    {
      "name": "Black Dress",
      "picture": "images/images/products/dress2.jpeg",
      "size": "M",
      "price": 500,
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/images/products/dress1.jpeg",
      "size": "L",
      "price": 320,
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_product_color: Products_on_the_cart[index]['color'],
            cart_product_name: Products_on_the_cart[index]['name'],
            cart_product_picture: Products_on_the_cart[index]['picture'],
            cart_product_price: Products_on_the_cart[index]['price'],
            cart_product_quantity: Products_on_the_cart[index]['quantity'],
            cart_product_size: Products_on_the_cart[index]['size'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_quantity;
  final cart_product_color;

  SingleCartProduct(
      {this.cart_product_color,
      this.cart_product_picture,
      this.cart_product_name,
      this.cart_product_price,
      this.cart_product_size,
      this.cart_product_quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        child: ListTile(
          leading: Image.asset(cart_product_picture,
          width: 80,
            height: 80,
          ),
          title: Text(cart_product_name),
          subtitle: Column(
            children: [
              Row(
                // ======Size Of the Cart Product  Section=======
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text('Size'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_product_size,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // ====Color Section of The Cart Product Section======
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
                    child: Text('Color:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_product_color,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              // ===========Product Price ==========
              Container(
                alignment: Alignment.topCenter,
                child: Text('\$${cart_product_price}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold
                ),
                ),
              )
            ],
          ),
          trailing: Column(
            children: [
              Expanded(
                flex: 14,
                child: IconButton(
                  icon: Icon(Icons.arrow_drop_up,), onPressed: (){},),
              ),
              Text("$cart_product_quantity"),
              Expanded(
                flex: 4,
                child: IconButton(
                  icon: Icon(Icons.arrow_drop_down,), onPressed: (){},),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
