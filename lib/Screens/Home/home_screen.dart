// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:juice/Screens/Home/widgets/juice_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: JuiceWidget(),
      ),
    );
  }
}
