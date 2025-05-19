
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetPath = "assets/images";

const colorRed = Color.fromRGBO(231,28,36,1);
const colorGreen = Color.fromRGBO(33,191,115,1);
const colorWhite = Color.fromRGBO(255,255,255,1);
const colorDarkblue = Color.fromRGBO(44,62,80,1);

ScreenBackground(context){
  return SvgPicture.asset(
    "$assetPath/background.svg",
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1,),
    ),
    fillColor: colorWhite,
    filled:true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite, width: 1,),
    ),
    border: OutlineInputBorder(),
    labelText: label
  );
}


DecoratedBox AppDropdownStyle(child)=> DecoratedBox(
    decoration: BoxDecoration(
    color: colorWhite,
    border: Border.all(color: colorWhite, width: 1),
    borderRadius: BorderRadius.circular(4)
  ),
  child: Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: child,
  ),
  );

ButtonStyle AppButtonStyle () => ElevatedButton.styleFrom(
  elevation: 1,
  padding: EdgeInsets.all(0),
  backgroundColor: Colors.transparent,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
);

Ink SuccessButtonChild (buttonText){
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(4)
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(buttonText, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: colorWhite),),
    ),
  );
}