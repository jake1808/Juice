import 'package:flutter/material.dart';

class SimplaeRatingBar extends StatelessWidget {
  const SimplaeRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => const Icon(
          Icons.star,
          color: Color(0xFFFFBA00),
          size: 18,
        ),
      ),
    );
  }
}
