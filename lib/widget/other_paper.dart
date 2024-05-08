// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vneid/widget/documents/document_list.dart';
import 'package:vneid/widget/info/info_list.dart';
import 'package:vneid/widget/info_form.dart';

class OtherPaper extends StatelessWidget {
  const OtherPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Dịch vụ'),
        Center(
          child: Wrap(
            spacing: 10,
            direction: Axis.horizontal,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(() => InfoList());
                },
                child: const Column(
                  children: [
                    Icon(Icons.contact_page_outlined, size: 50),
                    Text("Thông tin cá nhân")
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => DocumentList());
                },
                child: const Column(
                  children: [
                    Icon(Icons.assignment, size: 50),
                    Text("Tài liệu")
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => InfoForm());
                },
                child: const Column(
                  children: [
                    Icon(Icons.present_to_all_outlined, size: 50),
                    Text("Tích hợp giấy tờ")
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
