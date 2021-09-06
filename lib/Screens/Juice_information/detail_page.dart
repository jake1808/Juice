import 'package:flutter/material.dart';
import 'widgets/juice_card.dart';

import '../../models/jucie.dart';
import '../../repository/juice_list.dart';
import 'widgets/counter.dart';

class JuiceDetaile extends StatefulWidget {
  const JuiceDetaile({Key? key}) : super(key: key);

  @override
  State<JuiceDetaile> createState() => _JuiceDetaileState();
}

class _JuiceDetaileState extends State<JuiceDetaile> {
  final JuiceEntity juice = juiceList[0];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          JuiceCard(juice: juice),
          Align(
            alignment: Alignment.center,
            child: CounterWidget(
              juice: juice,
              count: count,
              onDecrment: onDecrement,
              onIncrement: onIncrement,
            ),
          )
        ],
      ),
    );
  }

  void onDecrement() {
    setState(() {
      count--;
    });
  }

  void onIncrement() {
    setState(() {
      count++;
    });
  }
}
