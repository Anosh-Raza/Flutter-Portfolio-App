import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/project_home.dart';
import 'about.dart';
import 'my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeData(fontFamily: "Soho"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHome(),
      home: const AboutPg(),
    );
  }
}
