// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tallyappdemo/utils/my_color.dart';
import 'package:tallyappdemo/utils/my_image.dart';
import 'package:tallyappdemo/widgets/custom_app_bar.dart';
import 'package:tallyappdemo/widgets/parle_industries_custom.dart';

enum label { email, sms, ivr }

class SendBulkMessage extends StatefulWidget {
  const SendBulkMessage({Key? key}) : super(key: key);

  @override
  State<SendBulkMessage> createState() => _SendBulkMessageState();
}

class _SendBulkMessageState extends State<SendBulkMessage> {
  label? character = label.email;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(
            backgroundColor: MyColors.lightGrey,
            //isExtended: true,
            child: Center(child: Image.asset(MyImages.send,height: 30)),
            onPressed: () {},
          ),
          backgroundColor: MyColors.backgroundGrey,
          appBar: buildAppBar("Send Bulk Messages"),
          body: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Select Mode",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Row(
                      children: [
                        Radio<label>(
                          activeColor: MyColors.blue,
                            value: label.email,
                            groupValue: character,
                            onChanged: (label? value) {
                              setState(() {
                                character = value;
                              });
                            }),
                        Text("Email"),
                        Radio<label>(
                            activeColor: MyColors.blue,
                            value: label.sms,
                            groupValue: character,
                            onChanged: (label? value) {
                              setState(() {
                                character = value;
                              });
                            }),
                        Text("SMS"),
                        Radio<label>(
                            activeColor: MyColors.blue,
                            value: label.ivr,
                            groupValue: character,
                            onChanged: (label? value) {
                              setState(() {
                                character = value;
                              });
                            }),
                        Text("IVR")
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    CustomParleIndustries(),
                    CustomParleIndustries(),
                    CustomParleIndustries(),
                    CustomParleIndustries(),
                    CustomParleIndustries(),
                    CustomParleIndustries(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
