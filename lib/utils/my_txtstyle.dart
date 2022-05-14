// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tallyappdemo/utils/my_color.dart';

class MyTextStyle{

static TextStyle totalDue =  TextStyle(
  color: MyColors.greyTxt,
  fontSize: 15
);
static TextStyle rsStyle = TextStyle(
    color: MyColors.red,
    fontWeight: FontWeight.bold,
    fontSize: 16
);
static TextStyle phoneNoStyle = TextStyle(
    fontSize: 12
);
static TextStyle parlIndustries = TextStyle(
    fontSize: 18
);
static TextStyle wpReminderTxtStyle = TextStyle(
    fontSize: 15,
  fontWeight: FontWeight.bold
);
static TextStyle wpReminderDescStyle = TextStyle(
    fontSize: 12,
  color: MyColors.greyTxt,
  overflow: TextOverflow.clip
);

}