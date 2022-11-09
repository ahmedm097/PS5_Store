import 'package:PS/styles/my_color.dart';
import 'package:flutter/material.dart';
import 'package:PS/models/product.dart';
import 'package:PS/widgets/shadow.dart';
import 'package:PS/screens/product_screen.dart';

class ProductCard extends StatelessWidget {
  final Product _product;
  ProductCard(this._product);
  @override
  Widget build(BuildContext context) { //build the product card 
    return GestureDetector( //navigate to product screen when card is tapped 
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(_product)));},
          child: Container(
        height: 250.0,
        width: MediaQuery.of(context).size.width / 2 - 40,
        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: MyColor().white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: Shadow().neumorphic(Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
          ),
          child: Column( //Hold the details for the card
            crossAxisAlignment: CrossAxisAlignment.start, //move all items to start to the left 
            children: <Widget>[
              Icon(
                Icons.favorite_border,
                size: 15.0,
              ),
              Center(
              child: Image(
                image: AssetImage(_product.image),
                height: 150.0
                ),
                ),
                SizedBox( //for spacing 
                  height: 5.0,
                ),
                Text( // text for product type
                  _product.type,
                  style:TextStyle(fontSize: 10.0),
                ),
                SizedBox( //spacing
                  height: 5.0,
                ),
                Text( //text for product name 
                  _product.name,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: MyColor().blue,
                    fontWeight: FontWeight.bold
                    ),
                ),
            ],
          ),
      ),
    );
  }
}