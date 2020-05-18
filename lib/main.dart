import 'package:awesome_bdo_app/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BdoBankingApp());

class BdoBankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(brightness: Brightness.dark),
      ),
      home: LoginPage(),
    );
  }
}
