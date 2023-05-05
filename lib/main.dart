import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pagepoker/screens/login_screen.dart';
import 'package:pagepoker/utils/color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: transparentColor
  ),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
