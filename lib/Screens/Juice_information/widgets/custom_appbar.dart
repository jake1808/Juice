import 'package:flutter/material.dart';
import '../../../models/jucie.dart';

class CustomAppBarDetails extends StatelessWidget {
  const CustomAppBarDetails({
    Key? key,
    required this.juice,
  }) : super(key: key);

  final JuiceEntity juice;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: juice.color,
      padding: EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 8),
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
    );
  }
}
