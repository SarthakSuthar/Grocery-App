import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/CustomWidgets/global_button.dart';
import 'package:grocery_app/SignIn/UI/sign_in.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool isEnterMasked = false;
  bool isReEnterMasked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  "New Password",
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(flex: 2),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Create Your New Password",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("Enter Your New Password"),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: isEnterMasked,
              decoration: InputDecoration(
                hintText: "Enter New Password",
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
                suffixIcon: IconButton(
                  icon: Icon(
                    isEnterMasked ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      isEnterMasked =
                          !isEnterMasked; // Toggle password visibility
                    });
                  },
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Confirm New Password"),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: isReEnterMasked,
              decoration: InputDecoration(
                hintText: "Re-enter New Password",
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
                suffixIcon: IconButton(
                  icon: Icon(
                    isReEnterMasked ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      isReEnterMasked =
                          !isReEnterMasked; // Toggle password visibility
                    });
                  },
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            const Spacer(),
            GlobalButton(
              label: "Save",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
