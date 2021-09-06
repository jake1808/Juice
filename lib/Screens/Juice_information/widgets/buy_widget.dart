import 'package:flutter/material.dart';
import '../../Home/widgets/my_button.dart';

class BuyWidget extends StatelessWidget {
  const BuyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '\$',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: '25.99',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 48,
            child: MyButton(
              text: 'But Now',
              textColor: Colors.white,
              bgColor: Color(0xFFF3BE39),
            ),
          )
        ],
      ),
    );
  }
}
