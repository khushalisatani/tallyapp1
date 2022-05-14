// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tallyappdemo/utils/my_color.dart';
import 'package:tallyappdemo/utils/my_string.dart';
import 'package:tallyappdemo/widgets/custom_app_bar.dart';
import 'package:tallyappdemo/widgets/history_custom.dart';

class ReminderHistory extends StatefulWidget {
  const ReminderHistory({Key? key}) : super(key: key);

  @override
  State<ReminderHistory> createState() => _ReminderHistoryState();
}

class _ReminderHistoryState extends State<ReminderHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: MyColors.backgroundGrey,
            appBar: buildAppBar("History"),
            body: ListView(
              children: [
                CustomHistoryCard(
                  title: MyString.automatedWpReminderSent,
                  desc: MyString.automatedWpDesc,
                ),
                CustomHistoryCard(
                  title: MyString.emailReminder,
                  desc: MyString.emailDesc,
                ),
                CustomHistoryCard(
                  title: MyString.smsReminder,
                  desc: MyString.automatedWpDesc,
                ),
              ],
            )));
  }
}
