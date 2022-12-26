import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'Pages/home.dart';
import 'credentials/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookKaamWaali',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.primaryBg
      ),
      home: loginScreen(),
    );
  }
}
