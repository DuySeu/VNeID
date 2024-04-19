// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class ViewInfo extends StatelessWidget {
  ViewInfo({super.key, required this.info});
  Map<String, dynamic> info;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(info["infoType"]),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.amberAccent,
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: info["ava"] != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(info["ava"].toString()),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(info["infoType"],
                                style: TextStyle(fontSize: 32.0)),
                            SizedBox(height: 8.0),
                            Text("No.: ${info["infoNo"]}"),
                            SizedBox(height: 4.0),
                            Text("Họ và tên: ${info["name"]}"),
                            SizedBox(height: 4.0),
                            Text("Ngày sinh: ${info["date"]}"),
                            SizedBox(height: 4.0),
                            Text("Giới tính: ${info["sex"]}"),
                            SizedBox(height: 4.0),
                            Text("Nơi cấp: ${info["location"]}"),
                          ],
                        ),
                      ],
                    )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(info["infoType"],
                          style: TextStyle(fontSize: 24.0)),
                      SizedBox(height: 8.0),
                      Text("No: ${info["infoNo"]}"),
                      SizedBox(height: 4.0),
                      Text("Họ và tên: ${info["name"]}"),
                      SizedBox(height: 4.0),
                      Text("Ngày cấp: ${info["date"]}"),
                      SizedBox(height: 4.0),
                      Text("Giới tính: ${info["sex"]}"),
                      SizedBox(height: 4.0),
                      Text("Nơi cấp: ${info["location"]}"),
                    ],
                  ),
            ),
          ),
        ],
      ),
    ));
  }
}
