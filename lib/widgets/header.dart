import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget leadingButton; //left icon
    final Widget actionButton; //far right icon
    final Image logo; //the logo
    final Color bgColor; //background color

  Header( this.leadingButton, this.actionButton, this.logo, this.bgColor);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 20.0), //horizontal padding of 20.0 (brings icons closer to logo)
      height: 65.0,
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //space the items 
        children: <Widget>[leadingButton,logo,actionButton],
      ),
    );
  }
}