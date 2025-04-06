import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/AppColors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const Text(
                    "Profile",
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.edit_note_outlined),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Icon(
                      CupertinoIcons.person_alt_circle,
                      size: 100,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Appcolors.appPrimary),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        CupertinoIcons.camera,
                        color: Appcolors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Sarthak Suthar",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "125K",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Total Order",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "56",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Order Cancel",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "258",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Order Pending",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Icon(
                    Icons.person_add_alt,
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Payment Method",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.security,
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Security",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Appcolors.warning,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Logout",
                    style: TextStyle(fontSize: 18, color: Appcolors.warning),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
