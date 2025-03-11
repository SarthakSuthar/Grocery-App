import 'package:flutter/material.dart';
import 'package:grocery_app/AppColors.dart';
import 'package:grocery_app/SignIn/UI/sign_in.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/groceryCart.png',
              width: 450,
              height: 450,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "Start Your Journy With Grocery",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const Text(
                  "Start your journy with grocery and discover a wide range of fresh.",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const BottomClips(),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Appcolors.appPrimary),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}

class BottomClips extends StatelessWidget {
  const BottomClips({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Appcolors.appPrimary,
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.green[200],
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: 10,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.green[200],
          ),
        )
      ],
    );
  }
}
