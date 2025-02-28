import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/widgets/custom_button.dart';
import 'package:db_sample/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  TextEditingController username = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryColor, secondaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: oColor3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: SizedBox(
                        width: 350,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Icon(Icons.person, size: 40),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                children: [
                                  CustomInputField(
                                    controller: username,
                                    hintText: "Name",
                                    keyboardType: TextInputType.name,
                                    textColor: primaryColor,
                                  ),
                                  SizedBox(height: 20),
                                  CustomInputField(
                                    controller: surname,
                                    hintText: "Surname",
                                    keyboardType: TextInputType.name,
                                    textColor: primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomInputField(
                      controller: email,
                      hintText: "e-mail",
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 50,
                      width: 350,
                      textColor: primaryColor,
                    ),
                    SizedBox(height: 20),
                    CustomInputField(
                      controller: phone,
                      hintText: "Phone Number",
                      keyboardType: TextInputType.phone,
                      maxLength: 14,
                      width: 350,
                      textColor: primaryColor,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: CustomInputField(
                              controller: date,
                              hintText: "Date",
                              readOnly: true,
                              textColor: primaryColor,
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100),
                                  initialDate: DateTime.now(),
                                  initialDatePickerMode: DatePickerMode.day,
                                ).then((value) {
                                  if (value != null) {
                                    setState(() {
                                      date.text =
                                          DateFormat.yMMMEd()
                                              .format(value)
                                              .toString();
                                    });
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 3,
                            child: CustomInputField(
                              controller: time,
                              hintText: "Time",
                              readOnly: true,
                              textColor: primaryColor,
                              onTap:
                                  () => showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((value) {
                                    if (value != null) {
                                      setState(() {
                                        time.text = TimeOfDay(
                                          hour: value.hour,
                                          minute: value.minute,
                                        ).format(context);
                                      });
                                    }
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomInputField(
                      controller: description,
                      textColor: Colors.black,
                      width: 350,
                      height: 200,
                      hintText: "Description",
                      maxLines: 10,
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: CustomButton(
                        buttonLogic: () {
                          Navigator.pop(context);
                        },
                        buttonText: "Create",
                        backgroundColor: oColor2,
                        textColor: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
