import 'package:db_sample/models/person.dart';
import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/views/main_pages/Page1/add_card.dart';
import 'package:db_sample/widgets/card_list_element.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List examples = Person.examples;
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
          child: ListView.builder(
            itemCount: Person.examples.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                AddCard(newPerson: false, indexOfPerson: index),
                      ),
                    ),
                child: CardListElement(
                  firstText: Person.examples[index].name,
                  secondText: Person.examples[index].surname,
                  thirdText: Person.examples[index].email,
                  date:
                      DateFormat.yMd()
                          .format(Person.examples[index].date)
                          .toString(),
                  time:
                      TimeOfDay(
                        hour: Person.examples[index].time.hour,
                        minute: Person.examples[index].time.minute,
                      ).format(context).toString(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
