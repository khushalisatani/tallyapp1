// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tallyappdemo/utils/my_color.dart';
import 'package:tallyappdemo/utils/my_image.dart';
import 'package:tallyappdemo/utils/my_string.dart';
import 'package:tallyappdemo/utils/my_txtstyle.dart';
import 'package:tallyappdemo/widgets/custom_image_button.dart';

class CustomParleIndustries extends StatefulWidget {
  const CustomParleIndustries({Key? key}) : super(key: key);

  @override
  State<CustomParleIndustries> createState() => _CustomParleIndustriesState();
}

class _CustomParleIndustriesState extends State<CustomParleIndustries> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: MyColors.white,
        height: 110,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: MyColors.blue,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(MyString.parlIndustries,style: MyTextStyle.parlIndustries,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                size: 17,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(MyString.mailId,
                                  style: (
                                      TextStyle(overflow: TextOverflow.ellipsis,fontSize: 12)
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              ImageButton(
                                image: MyImages.whatsapp,
                              ),
                              SizedBox(width: 5),
                              Text(MyString.phoneNo,style: MyTextStyle.phoneNoStyle,),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 10),
                    Text(MyString.totalDue,style: MyTextStyle.totalDue),
                    SizedBox(height: 5),
                    Text(MyString.rsTxt,
                      style: MyTextStyle.rsStyle
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.call,size: 17,color: Colors.grey,),
                        SizedBox(width: 7),
                        Text(MyString.phoneNo,style: MyTextStyle.phoneNoStyle),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
