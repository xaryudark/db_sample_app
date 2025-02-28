import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/widgets/custom_button.dart';
import 'package:db_sample/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController passwordAgain = TextEditingController();
  bool errorText = false;

  @override
  void initState() {
    errorText = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: secondaryColor,
          title: Text("Sign Up", style: TextStyle(color: primaryColor)),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryColor, secondaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomInputField(controller: username, hintText: "Username"),
                SizedBox(height: 20),
                CustomInputField(controller: email, hintText: "e-mail"),
                SizedBox(height: 20),
                CustomInputField(
                  controller: password,
                  hintText: "Password",
                  obscureText: true,
                ),
                SizedBox(height: 20),
                CustomInputField(
                  controller: passwordAgain,
                  hintText: "Password",
                  obscureText: true,
                ),
                if (errorText == true) SizedBox(height: 20),
                if (errorText == true)
                  Text(
                    "Passwrods didn't match.",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 17, 0),
                      fontSize: 16,
                    ),
                  ),
                SizedBox(height: 40),
                CustomButton(
                  buttonLogic: () {
                    if (passwordAgain.text != password.text) {
                      setState(() {
                        errorText = true;
                      });
                      password.text = "";
                      passwordAgain.text = "";
                    }
                  },
                  buttonText: "Sign Up",
                  backgroundColor: oColor2,
                  textColor: primaryColor,
                  buttonTextSize: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
