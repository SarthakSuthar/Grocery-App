import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/AppColors.dart';
import 'package:grocery_app/CustomWidgets/global_button.dart';

class RecoveryPasswordScreen extends StatefulWidget {
  const RecoveryPasswordScreen({super.key});

  @override
  State<RecoveryPasswordScreen> createState() => _RecoveryPasswordScreenState();
}

class _RecoveryPasswordScreenState extends State<RecoveryPasswordScreen> {
  int? _radioSelected;
  String _radioVal = "";
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
                    "Recovery Password",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/images/recovery password.png",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Please select which Canfielddetails you'd like to use to reset your password.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value;
                        _radioVal = "Via Message";
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Appcolors.appPrimary),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Via Message",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("+919106622984"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value;
                        _radioVal = "Via Email";
                      });
                    },
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Appcolors.appPrimary),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Via Email",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("sarthaksuthar@gmail.com"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              GlobalButton(label: "Send", onTap: () {}),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Back to "),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Appcolors.appPrimary),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
