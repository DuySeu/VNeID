// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vneid/fake_data.dart';
import 'package:vneid/widget/info/view_info.dart';

class InfoList extends StatelessWidget {
  InfoList({super.key});

  final _info = FAKE_INFORMATION;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Các giấy tờ cá nhân"),
      ),
      body: ListView.builder(
        itemCount: _info.length,
        itemBuilder: (context, index) {
          final item = _info[index];
          return ListTile(
              onTap: () {
                Get.to(() => ViewInfo(info: item));
              },
              title: Text(item["infoType"].toString()));
        },
      ),
    ));
  }
}
