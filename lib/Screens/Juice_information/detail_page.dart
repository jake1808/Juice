import 'package:flutter/material.dart';
import 'widgets/counter.dart';
import '../../constants.dart';
import '../../models/jucie.dart';
import '../../repository/juice_list.dart';

class JuiceDetaile extends StatefulWidget {
  JuiceDetaile({Key? key}) : super(key: key);

  @override
  State<JuiceDetaile> createState() => _JuiceDetaileState();
}

class _JuiceDetaileState extends State<JuiceDetaile> {
  final JuiceEntity juice = juiceList[0];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: CounterWidget(
          juice: juice,
          count: count,
          onDecrment: () {
            setState(() {
              count--;
            });
          },
          onIncrement: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
