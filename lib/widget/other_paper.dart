// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:vneid/widget/document_list.dart';
import 'package:vneid/widget/info_list.dart';

class otherPaper extends StatelessWidget {
  const otherPaper({super.key});

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InfoList()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DocumentList()));
                },
                child: const Column(
                  children: [
                    Icon(Icons.assignment, size: 50),
                    Text("Tài liệu")
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
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
