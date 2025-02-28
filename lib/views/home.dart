import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/views/main_pages/page1.dart';
import 'package:db_sample/views/main_pages/page2.dart';
import 'package:db_sample/views/main_pages/page3.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_filled, color: primaryColor),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_search, color: primaryColor),
            label: "Patients",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings, color: primaryColor),
            label: "Settings",
          ),
        ],
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: oColor1,
        indicatorColor: Colors.white,
        selectedIndex: pageIndex,
        onDestinationSelected: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
      body: <Widget>[Page1(), Page2(), Page3()][pageIndex],
    );
  }
}
