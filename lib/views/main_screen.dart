import 'package:db_sample/utilities/colors.dart';
import 'package:db_sample/views/login_screen.dart';
import 'package:db_sample/views/register_type_screen.dart';
import 'package:db_sample/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Image(
              image: AssetImage("assets/images/doctor.png"),
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 40),
            CustomButton(
              buttonLogic: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterTypeScreen(),
                  ),
                );
              },
              buttonText: "Sign Up",
              backgroundColor: oColor2,
              textColor: primaryColor,
              buttonTextSize: 16,
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonLogic: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              buttonText: "Sign In",
              backgroundColor: oColor2,
              textColor: primaryColor,
              buttonTextSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
