import 'package:flutter/material.dart';

class Person {
  Person({
    required this.name,
    required this.surname,
    required this.email,
    required this.phone,
    required this.date,
    required this.time,
    this.description,
  });
  final String name;
  final String surname;
  final String email;
  final String phone;
  final DateTime date;
  final TimeOfDay time;
  final String? description;

  factory Person.fromjson(Map<String, dynamic> json) => Person(
    name: json["name"],
    surname: json["surname"],
    email: json["email"],
    phone: json["phone"],
    date: json["date"],
    time: json["time"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "surname": surname,
    "email": email,
    "phone": phone,
    "date": date,
    "time": time,
    "description": description,
  };

  static final examples = [
    Person(
      name: "Jhon",
      surname: "Steel",
      email: "jSteel@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 10, minute: 15),
    ),
    Person(
      name: "Kate",
      surname: "Grenn",
      email: "GrennK@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 11, minute: 00),
    ),
    Person(
      name: "Solomon",
      surname: "Kane",
      email: "SKane@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 12, minute: 00),
    ),
    Person(
      name: "Suzan",
      surname: "Veras",
      email: "VerasS@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 12, minute: 30),
    ),
    Person(
      name: "Adam",
      surname: "Klee",
      email: "AdamK@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 13, minute: 20),
    ),
    Person(
      name: "Alfred",
      surname: "Henson",
      email: "AlfredH@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 14, minute: 15),
    ),
    Person(
      name: "Jansen",
      surname: "Kimi",
      email: "Jkimi@example.com",
      phone: "1112223344",
      date: DateTime(2025, 3, 10),
      time: TimeOfDay(hour: 16, minute: 00),
    ),
  ];
}
