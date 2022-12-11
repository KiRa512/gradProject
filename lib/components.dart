import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'products.dart';
import 'pages/product_details.dart';

class ListTileElement extends StatelessWidget {
  ListTileElement({@required this.title, @required this.icon,this.onPressed});
  Widget title;
  Icon icon;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: title,
        leading: icon,
      ),
    );
  }
}

class CarouselImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/images/c1.jpg'),
          AssetImage('images/images/m1.jpeg'),
          AssetImage('images/images/m2.jpg'),
          AssetImage('images/images/w1.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 750),
        indicatorBgPadding: 2,
        dotBgColor: Colors.transparent,
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              image_caption: 'T-Shirts',
              image_location: 'images/images/cats/tshirt.png',
          ),
          Category(
            image_location: 'images/images/cats/accessories.png',
              image_caption: 'Accessories',
          ),
          Category(
            image_caption: 'Formal',
            image_location: 'images/images/cats/formal.png',
          ),
          Category(
            image_caption: 'jeans',
            image_location: 'images/images/cats/jeans.png',
          ),
          Category(
            image_caption: 'Shoes',
            image_location: 'images/images/cats/shoe.png',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({@required this.image_caption, @required this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        width: 110.0,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(
              image_location,
              height: 50,
              width: 100.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 5.0),
                child: Text(image_caption,style: TextStyle(fontSize: 12),),
            ),
          ),
        ),
      ),
    );
  }
}



class PartOfButton extends StatelessWidget {
  final String title;
  PartOfButton({@required this.title });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // ========= The Color Button ===========
      child: MaterialButton(
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  title: Text(title),
                  content: Text('Choose the $title'),
                  actions: [
                    MaterialButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('Close'),

                    )

                  ],
                );
              }

          );
        },
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Text(title),
            ),
            Expanded(
              child: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}


class Single_Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_Product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              product_detail_name: product_name,
              product_detail_new_price: product_price,
              product_detail_old_price: product_old_price,
              product_detail_picture: product_picture,
            ),
          ),
        ),
        child: GridTile(
          child: Image.asset(
            product_picture,
            fit: BoxFit.cover,
          ),
          footer: Container(
            color: Colors.white70,
            child: Row(
              children: [
                Expanded(
                  child: Text(product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text('\$${product_price}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class Similar_Single_Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Similar_Single_Product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              product_detail_name: product_name,
              product_detail_new_price: product_price,
              product_detail_old_price: product_old_price,
              product_detail_picture: product_picture,
            ),
          ),
        ),
        child: GridTile(
          child: Image.asset(
            product_picture,
            fit: BoxFit.cover,
          ),
          footer: Container(
            color: Colors.white70,
            child: Row(
              children: [
                Expanded(
                  child: Text(product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text('\$${product_price}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

