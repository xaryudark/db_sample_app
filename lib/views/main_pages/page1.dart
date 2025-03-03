import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/views/main_pages/Page1/add_card.dart';
import 'package:db_sample/views/main_pages/Page1/card_list.dart';
import 'package:db_sample/widgets/grid_element.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
          ),
          children: [
            GridElement(
              buttonLogic: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCard(newPerson: true),
                  ),
                );
              },
              icon: Icon(
                Icons.person_add_alt_1,
                size: 100,
                color: Colors.white,
              ),
              backgroundColor: oColor3,
            ),
            GridElement(
              buttonLogic: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardList()),
                );
              },
              icon: Icon(Icons.person_search, size: 100, color: Colors.white),
              backgroundColor: oColor3,
            ),
            GridElement(
              buttonLogic: () {},
              icon: Icon(
                Icons.list_alt_rounded,
                size: 100,
                color: Colors.white,
              ),
              backgroundColor: oColor3,
            ),
            GridElement(
              buttonLogic: () {},
              icon: Icon(
                Icons.graphic_eq_rounded,
                size: 100,
                color: Colors.white,
              ),
              backgroundColor: oColor3,
            ),
            GridElement(
              buttonLogic: () {},
              icon: Icon(
                Icons.graphic_eq_rounded,
                size: 100,
                color: Colors.white,
              ),
              backgroundColor: oColor3,
            ),
            GridElement(
              buttonLogic: () {},
              icon: Icon(
                Icons.graphic_eq_rounded,
                size: 100,
                color: Colors.white,
              ),
              backgroundColor: oColor3,
            ),
          ],
        ),
      ),
    );
  }
}
