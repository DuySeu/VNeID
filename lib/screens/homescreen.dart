// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vneid/screens/paperWallet.dart';
import 'package:vneid/widget/other_paper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VNeID'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("asset/ava.jpg"),
            ),
            Text(
              'Nguyễn Quốc Duy',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => PaperWalletScreen());
                },
                child: Text('Xem CCCD')),
            OtherPaper(),
            SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Thông tin'),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.cyan[100],
                        height: 200.0,
                        child: TextButton(
                          onPressed: () async {
                            var url = Uri.https('dantri.com.vn', '');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            }
                          },
                          child: Text("Báo dân trí"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
