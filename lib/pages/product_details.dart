import 'package:flutter/material.dart';
import 'package:e_nnovation/components.dart';
import 'package:e_nnovation/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: InkWell(
          child: Text('E-NNOVATION'),
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  title: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Text(
                          '\$${widget.product_detail_old_price}',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\$${widget.product_detail_new_price}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              PartOfButton(
                title: 'Size',
              ),
              PartOfButton(
                title: 'QTY',
              ),
              PartOfButton(
                title: 'Color',
              ),
            ],
          ),
          Row(
            // The Buy Button
            children: [
              Expanded(
                // ========= The Color Button ===========
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Railway'),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
              ),
            ],
          ),
          ListTile(
            title: Text('Product Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),) ,
            subtitle: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  'Product Name',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  'Product Brand',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Brand X'),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  'Product Condition',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              )
            ],
          ),
          // Similar Products
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Similar Products',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
            ),
          ),
          Container(
            height: 360.0,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [

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
        return Similar_Single_Product(
          product_name: product_list[index]['name'],
          product_price: product_list[index]['price'],
          product_old_price: product_list[index]['old_price'],
          product_picture: product_list[index]['picture'],
        );
      },
    );
  }
}


