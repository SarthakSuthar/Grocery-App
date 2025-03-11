import 'package:flutter/material.dart';
import 'package:grocery_app/AppColors.dart';
import 'package:grocery_app/SignIn/UI/recovery_password.dart';
import 'package:grocery_app/SignIn/UI/verification_code_ui.dart';
import 'package:grocery_app/SignUp/UI/sign_up.dart';
import 'package:grocery_app/SplashScreen/UI/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.appPrimary),
        useMaterial3: true,
      ),
      home: const VerificationCodeScreen(),
    );
  }
}
