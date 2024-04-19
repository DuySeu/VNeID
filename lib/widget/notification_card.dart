// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';

Widget notificationCard(int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.grey.shade300
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        notiIcon(),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                timeAndDate(
                  index,
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget notiIcon() {
  return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.notifications,
        size: 25,
      ));
}

Widget message(int index) {
  double TextSize = 14;
  return RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          text: "message: ",
          style: TextStyle(
              fontSize: TextSize,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: "description",
                style: TextStyle(fontWeight: FontWeight.w400))
          ]));
}

Widget timeAndDate(int index) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '4-6-2024',
          style: TextStyle(fontSize: 10),
        )
      ],
    ),
  );
}
