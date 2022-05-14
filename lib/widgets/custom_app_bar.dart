// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tallyappdemo/utils/my_color.dart';

AppBar buildAppBar(String title){
  return AppBar(
    elevation: 0,
    backgroundColor: MyColors.white,
    title: Text(title,style: TextStyle(color: MyColors.black,fontSize: 17)),
    iconTheme: IconThemeData(
      color: Colors.black
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){},
    )
  );
}