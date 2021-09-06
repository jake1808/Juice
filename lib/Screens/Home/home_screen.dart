// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:juice/Screens/Home/widgets/juice_widget.dart';
import 'package:juice/repository/juice_list.dart';

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
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return JuiceWidget(juices: juiceList[index]);
          },
          itemCount: juiceList.length,
        ),
      ),
    );
  }
}
