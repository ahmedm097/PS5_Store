import 'package:PS/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:PS/models/product.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ProductCard(productList[0]),
            ProductCard(productList[1])
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ProductCard(productList[2]),
            ProductCard(productList[3])
          ],
        )
      ],
    ) //hold the product
        ); //to fill to the avaliable screen
  }
}
