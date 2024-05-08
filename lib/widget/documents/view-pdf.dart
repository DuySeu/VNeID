// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class ViewPDF extends StatefulWidget {
  ViewPDF({super.key, required this.doc});
  Map<String, dynamic> doc;

  @override
  State<ViewPDF> createState() => _ViewPDFState();
}

class _ViewPDFState extends State<ViewPDF> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch =
        PdfControllerPinch(document: PdfDocument.openAsset(widget.doc["pdf"]));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(widget.doc["name"]),
      ),
      body: Column(
        children: [
          Expanded(child: PdfViewPinch(controller: pdfControllerPinch))
        ],
      ),
    ));
  }
}
