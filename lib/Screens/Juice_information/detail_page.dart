import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/jucie.dart';
import '../../repository/juice_list.dart';

class JuiceDetaile extends StatelessWidget {
  JuiceDetaile({Key? key}) : super(key: key);

  final JuiceEntity juice = juiceList[0];
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
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
              const Icon(
                Icons.remove,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                count.toString(),
                style: kTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
