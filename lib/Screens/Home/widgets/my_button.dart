import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final Color? textColor;
  const MyButton({
    Key? key,
    this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {},
    );
  }
}
