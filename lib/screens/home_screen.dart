import 'package:PS/styles/my_color.dart';
import 'package:flutter/material.dart';
import 'package:PS/widgets/buttons.dart';
import 'package:PS/widgets/shadow.dart';
import 'package:PS/widgets/header.dart';
import 'package:PS/widgets/products.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() =>  _HomeScreenState();
}

class  _HomeScreenState extends State<HomeScreen> {

  _bottomNav(){ //the bottom navigation bar 
    return Container(
      decoration: BoxDecoration(
        color: MyColor().dark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0), //rounding top corners 
          topRight: Radius.circular(35.0)
        )),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //space icons evenly 
        children: <Widget>[
          Button().iconButton(
            MyColor().dark,
            Icon(
            Icons.home,
            color: MyColor().white,
            ), 
             Shadow().neumorphic(Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
             40.0),
         Button().iconButton(
            MyColor().dark,
            Icon(
            Icons.search,
            color: MyColor().white,
            ), 
             Shadow().neumorphic(Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
             40.0),
        Button().iconButton(
            MyColor().dark,
            Icon(
            Icons.account_circle,
            color: MyColor().white,
            ), 
             Shadow().neumorphic(Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
             40.0),
       Button().iconButton(
            MyColor().dark,
            Icon(
            Icons.shopping_cart,
            color: MyColor().white,
            ), 
             Shadow().neumorphic(Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
             40.0),
        ], //icon buttons 
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().white,
      body: SafeArea(
        child: Column( //hold the header and products of the home screen
          children: <Widget>[
          Header(
           Button().iconButton(
            MyColor().white,
            Icon(
            Icons.sort,
            color: MyColor().dark,
            ), 
             Shadow().neumorphic(Colors.black.withOpacity(0.3), Colors.white),
             40.0),
           Button().iconButton(
            MyColor().white,
            Icon(
            Icons.settings,
            color: MyColor().dark,
            ), 
             Shadow().neumorphic(Colors.grey.withOpacity(0.3), Colors.white),
             40.0),
           Image(
                image: AssetImage("assets/ps5-logo.png") , width: 120.0,),
           MyColor().white),
           Products()
           ],
           
        ) ,),
      bottomNavigationBar: _bottomNav(),
    );
  }
}