import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/views/home.dart';
import 'package:db_sample/widgets/custom_button.dart';
import 'package:db_sample/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: secondaryColor,
          title: Text("Sign In", style: TextStyle(color: primaryColor)),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomInputField(controller: username, hintText: "Username"),
              SizedBox(height: 20),
              CustomInputField(controller: password, hintText: "Password"),
              SizedBox(height: 20),
              CustomButton(
                buttonLogic: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                buttonText: "Sign in",
                backgroundColor: oColor2,
                textColor: primaryColor,
                buttonTextSize: 16,
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("assets/images/Google_Logo.png"),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(oColor2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("assets/images/Apple_Logo.png"),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(oColor2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 100,
                height: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: Image(
                    image: AssetImage("assets/images/Microsoft_Logo.png"),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(oColor2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
