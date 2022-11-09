import 'package:PS/styles/my_color.dart';
import 'package:PS/widgets/buttons.dart';
import 'package:PS/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:PS/models/product.dart';
import 'package:PS/widgets/shadow.dart';

class ProductScreen extends StatelessWidget {
  final Product data;
  ProductScreen(this.data);

  _body(context) {
    var padding = MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var bodyHeight = MediaQuery.of(context).size.height -
        (padding +
            65); //make height of body the height of screen minus height of header and padding
    return Container(
      height: bodyHeight,
      child: SingleChildScrollView(
          //be able to scroll the items
          child: Container(
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.only(top: 50.0),
        decoration: BoxDecoration(
          color: MyColor().white,
          borderRadius: BorderRadius.only( //add curve shape to product card
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0)
          )
          ),
        child: ConstrainedBox( //make the body widget fill the remaining height of the screen
        constraints: BoxConstraints(minHeight: bodyHeight - 80.0), //30 pixels for top margin of container and 50 pixels for top padding of the container
          child: Column(
            //hold image, features and buy now button
            children: <Widget>[
              Image(image: AssetImage(data.image), height: 220.0),
              SizedBox(height: 10.0),
              Image(image: AssetImage("assets/ring.png"), height: 60.0),
              _features(),
              _buyButton()
            ],
          ),
        ),
      )),
    );
  }

  _buyButton() {
    //buy now button
    return Container(
      height: 55.0,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: MyColor().blue,
        boxShadow: Shadow().neumorphic(
            Colors.black.withOpacity(0.3), Colors.white.withOpacity(1)),
      ),
      child: Row(
        //hold price and buy now text
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            //container for price
            width: 80.0,
            height: 55.0,
            decoration: BoxDecoration(
              color: MyColor().darkBlue,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
                child: Text(
              data.price,
              style: TextStyle(
                  color: MyColor().white, fontWeight: FontWeight.bold),
            )),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color:MyColor().white,
                  fontWeight: FontWeight.bold,
                  fontSize:18.0
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _features() {
    //features of the product
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25.0),
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10.0),
            decoration: BoxDecoration(
              color: MyColor().white,
              boxShadow: Shadow().neumorphic(
                  Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //hold the icon and description of features
                Icon(
                  Icons.mic,
                  color: MyColor().blue,
                ),
                Text(
                  "Built-In Microphone",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: MyColor().white,
                boxShadow: Shadow().neumorphic(
                    Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.headset_mic,
                  color: MyColor().blue,
                ),
                Text(
                  "Headset Jack",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: MyColor().white,
                boxShadow: Shadow().neumorphic(
                    Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.router,
                  color: MyColor().blue,
                ),
                Text(
                  "Motion Sensor",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10.0),
            decoration: BoxDecoration(
              color: MyColor().white,
              boxShadow: Shadow().neumorphic(
                  Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.usb,
                  color: MyColor().blue,
                ),
                Text(
                  "2 Built-In USB Ports",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: MyColor().dark,
          body: SafeArea(
              child: Column(
            //hold the header and body of the page
            children: <Widget>[
              Header(
                  GestureDetector(
                      //go back to product page
                      onTap: () {
                        Navigator.pop(
                            context); //take us back to the previous screen
                      },
                      child: Button().iconButton(
                          MyColor().dark,
                          Icon(
                            Icons.arrow_back,
                            color: MyColor().white,
                          ),
                          Shadow().neumorphic(Colors.black.withOpacity(0.5),
                              Colors.grey.withOpacity(0.1)),
                          40.0)),
                  Button().iconButton(
                      MyColor().dark,
                      Icon(
                        Icons.settings,
                        color: MyColor().white,
                      ),
                      Shadow().neumorphic(Colors.black.withOpacity(0.5),
                          Colors.grey.withOpacity(0.1)),
                      40.0),
                  Image(
                    image: AssetImage("assets/ps5-logo-light.png"),
                    width: 120.0,
                  ),
                  MyColor().dark),
              _body(context) //for the body of the product info page
            ],
          )),
        ));
  }
}
