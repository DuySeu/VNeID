// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';

Widget PersonalInfo() {
  return SafeArea(
      child: Scaffold(
    appBar: AppBar(
      title: Text("Personal Information"),
      backgroundColor: Colors.amberAccent,
    ),
    body: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("asset/ava.jpg")
            ),
            Text("Nguyễn Quốc Duy"),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("ID"), Text("001203005602")],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Giới tính"), Text("Nam")],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Ngày sinh"), Text("02/07/2003")],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Số điện thoại"), Text("0941920239")],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Địa chỉ"), Text("Hanoi")],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
