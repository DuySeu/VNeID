// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vneid/fake_data.dart';
import 'package:vneid/widget/other_paper.dart';
import 'package:vneid/widget/personal_info.dart';

class PaperWalletScreen extends StatelessWidget {
  PaperWalletScreen({super.key});
  final _personalInfo = FAKE_INFORMATION;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Thông tin cá nhân"),
            backgroundColor: Colors.amber,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.amberAccent,
                  elevation: 10,
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage(_personalInfo[0]["ava"].toString()),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_personalInfo[0]["infoType"],
                                  style: TextStyle(fontSize: 32.0)),
                              SizedBox(height: 8.0),
                              Text("No.: ${_personalInfo[0]["infoNo"]}"),
                              SizedBox(height: 4.0),
                              Text("Họ và tên: ${_personalInfo[0]["name"]}"),
                              SizedBox(height: 4.0),
                              Text("Ngày sinh: ${_personalInfo[0]["date"]}"),
                              SizedBox(height: 4.0),
                              Text("Giới tính: ${_personalInfo[0]["sex"]}"),
                              SizedBox(height: 4.0),
                              Text("Nơi cấp: ${_personalInfo[0]["location"]}"),
                            ],
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersonalInfo()));
                        },
                        icon: Icon(
                          Icons.person,
                        ),
                        label: Text("Chi tiết thông tin")),
                  ),
                ),
                SizedBox(height: 8.0),
                otherPaper(),
              ],
            ),
          )),
    );
  }
}
