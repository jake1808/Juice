import 'package:flutter/material.dart';
import 'widgets/review_card.dart';
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
      body: ListView(
        children: [
          Stack(
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
              ),
              const SizedBox(height: 58),
              const RatingCard(),
              Container(
                color: juice.color,
                padding:
                    EdgeInsets.only(left: 24, right: 24, top: 26, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Image.network(
                          'https://flutter4fun.com/wp-content/uploads/2021/09/back.png',
                          width: 32),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      'Besom.',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Image.network(
                      'https://flutter4fun.com/wp-content/uploads/2021/09/shop_white.png',
                      width: 32,
                    )
                  ],
                ),
              )
            ],
          ),
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
