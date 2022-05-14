// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tallyappdemo/utils/my_color.dart';
import 'package:tallyappdemo/utils/my_image.dart';
import 'package:tallyappdemo/utils/my_string.dart';
import 'package:tallyappdemo/utils/my_txtstyle.dart';
import 'package:tallyappdemo/widgets/custom_image_button.dart';


class CustomHistoryCard extends StatefulWidget {
  final String? title;
  final String? desc;

  const CustomHistoryCard({Key? key, this.title, this.desc}) : super(key: key);

  @override
  State<CustomHistoryCard> createState() => _CustomHistoryCardState();
}

class _CustomHistoryCardState extends State<CustomHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        color: MyColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                 shape: BoxShape.circle,
                  color: MyColors.lightBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ImageButton(
                    image: MyImages.whatsapp,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.title}",
                    style: MyTextStyle.wpReminderTxtStyle,
                  ),
                  SizedBox(height: 6),
                  Text(
                    "${widget.desc}",
                    style: MyTextStyle.wpReminderDescStyle,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(MyString.date, style: MyTextStyle.wpReminderDescStyle),
                      SizedBox(width: 10),
                      Text(
                        MyString.time,
                        style: MyTextStyle.wpReminderDescStyle,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
