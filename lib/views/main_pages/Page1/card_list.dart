import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/widgets/grid_element.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              GridElement(
                buttonLogic: () {},
                icon: Text("İtem 1", style: TextStyle(color: Colors.white)),
                backgroundColor: oColor3,
              ),
              GridElement(
                buttonLogic: () {},
                icon: Text("İtem 1", style: TextStyle(color: Colors.white)),
                backgroundColor: oColor3,
              ),
              GridElement(
                buttonLogic: () {},
                icon: Text("İtem 1", style: TextStyle(color: Colors.white)),
                backgroundColor: oColor3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
