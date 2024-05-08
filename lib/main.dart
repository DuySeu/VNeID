// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vneid/screens/homescreen.dart';
import 'package:vneid/screens/notification.dart';
import 'package:vneid/screens/paperWallet.dart';
import 'package:vneid/screens/settingScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        home: MainNavBar(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainNavBar extends StatefulWidget {
  const MainNavBar({super.key});

  @override
  State<MainNavBar> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<MainNavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    PaperWalletScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.wallet), label: 'Paper Wallet'),
            NavigationDestination(icon: Icon(Icons.notifications), label: 'Notificaiton'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings')
          ],
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
