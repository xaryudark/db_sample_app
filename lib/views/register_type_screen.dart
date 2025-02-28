import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/views/register_screen.dart';
import 'package:db_sample/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class RegisterTypeScreen extends StatelessWidget {
  const RegisterTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              CustomIconButton(
                buttonLogic: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                icon: Icon(Icons.mail_rounded, size: 24, color: Colors.black),
                buttonText: "Sign up with e-mail",
                textColor: primaryColor,
                backgroundColor: oColor2,
              ),
              SizedBox(height: 20),
              CustomIconButton(
                buttonLogic: () {},
                icon: Image(
                  image: AssetImage("assets/images/Google_Logo.png"),
                  alignment: Alignment.center,
                  height: 30,
                ),
                buttonText: "Sign up with Google",
                textColor: primaryColor,
                backgroundColor: oColor2,
              ),
              SizedBox(height: 20),
              CustomIconButton(
                buttonLogic: () {},
                icon: Image(
                  image: AssetImage("assets/images/Apple_Logo.png"),
                  alignment: Alignment.center,
                  height: 30,
                ),
                buttonText: "Sign up with Apple",
                textColor: primaryColor,
                backgroundColor: oColor2,
              ),
              SizedBox(height: 20),
              CustomIconButton(
                buttonLogic: () {},
                icon: Image(
                  image: AssetImage("assets/images/Microsoft_Logo.png"),
                  alignment: Alignment.center,
                  height: 30,
                ),
                buttonText: "Sign up with Microsoft",
                textColor: primaryColor,
                backgroundColor: oColor2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
