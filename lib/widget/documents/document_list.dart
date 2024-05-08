import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vneid/fake_data.dart';
import 'package:vneid/widget/documents/view-pdf.dart';

class DocumentList extends StatelessWidget {
  DocumentList({super.key});

  final _pdf = FAKE_DOCUMENT;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Document List"),
      ),
      body: ListView.builder(
        itemCount: _pdf.length,
        itemBuilder: (context, index) {
          final item = _pdf[index];
          return ListTile(
            leading: const Icon(Icons.picture_as_pdf),
            title: Text(item["name"].toString()),
            onTap: () {
              Get.to(() => ViewPDF(doc: item));
            },
            trailing: const Icon(Icons.open_in_new),
          );
        },
      ),
    ));
  }
}
