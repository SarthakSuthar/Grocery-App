import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/AppColors.dart';
import 'package:grocery_app/CustomWidgets/global_button.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => VerificationCodeScreenState();
}

class VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.back),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Verification Code",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Please Enter Your ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "Email Address",
                    style: TextStyle(color: Appcolors.appPrimary, fontSize: 18),
                  ),
                  const Text(
                    " To",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
              const Text(
                "Recive Verification Code",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Text(
                "sarthaksuthar@gmail.com",
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Appcolors.appSecondary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.appPrimary)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Appcolors.appSecondary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.appPrimary)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Appcolors.appSecondary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.appPrimary)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        "6",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Appcolors.appSecondary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.appPrimary)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        "8",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),

              // code box
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Resend Code In "),
                  Text(
                    "48s",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              GlobalButton(label: "Verify", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
