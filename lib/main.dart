import 'package:flutter/material.dart';
import 'package:olilifood/Screen/Login.dart';
import 'package:olilifood/Screen/OTP.dart';
import 'package:olilifood/Screen/RegisterName.dart';
import 'package:olilifood/Screen/SelectLocation.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:provider/provider.dart';

import 'Screen/HomePage.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<DataProvider>(
      create: (context) => DataProvider(),
    ),
  ], child: MyApp()));

}


class MyApp extends StatefulWidget {
  final Widget widget;
  MyApp({this.widget});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OliliFood',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

