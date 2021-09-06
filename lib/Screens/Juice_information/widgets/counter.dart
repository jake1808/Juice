import 'package:flutter/material.dart';
import '../../../models/jucie.dart';

import '../../../constants.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
    required this.juice,
    required this.count,
    required this.onDecrment,
    required this.onIncrement,
  }) : super(key: key);
  final JuiceEntity juice;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrment;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
          color: juice.color,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 16,
          ),
          GestureDetector(
            onTap: onDecrment,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 30,
            child: Text(
              count.toString(),
              style: kTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
              onTap: onIncrement,
              child: const Icon(Icons.add, color: Colors.white)),
          const SizedBox(width: 16)
        ],
      ),
    );
  }
}
