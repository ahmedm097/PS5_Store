import 'package:flutter/material.dart';

class Button{

  iconButton(bgColor,icon,boxShadow,size){
    return Container(
      height: size, //size of icon
      width: size,
      decoration: BoxDecoration(
        color: bgColor, //background color 
        borderRadius: BorderRadius.circular(7.0), //cirular corners 
        boxShadow: boxShadow //neumorphic design
        ), 
        child: icon
    );
  }

}