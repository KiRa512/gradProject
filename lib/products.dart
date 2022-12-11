import 'package:flutter/material.dart';
import 'package:e_nnovation/pages/product_details.dart';
import 'components.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/images/products/blazer1.jpeg",
      "old_price": "220",
      "price": "150",
    },
    {
      "name": "Black Dress",
      "picture": "images/images/products/dress2.jpeg",
      "old_price": "720",
      "price": "500",
    },
    {
      "name": "Red Dress",
      "picture": "images/images/products/dress1.jpeg",
      "old_price": "490",
      "price": "320",
    },
    {
      "name": "Grey Shoes",
      "picture": "images/images/products/shoe1.jpg",
      "old_price": "310",
      "price": "250",
    },
    {
      "name": "High Heels",
      "picture": "images/images/products/hills1.jpeg",
      "old_price": "300",
      "price": "220",
    },
    {
      "name": "High Heels",
      "picture": "images/images/products/hills2.jpeg",
      "old_price": "660",
      "price": "450",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_Product(
          product_name: product_list[index]['name'],
          product_price: product_list[index]['price'],
          product_old_price: product_list[index]['old_price'],
          product_picture: product_list[index]['picture'],
        );
      },
    );
  }
}

