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
}
