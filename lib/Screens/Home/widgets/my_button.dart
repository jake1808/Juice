import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Color? bgColor;
  final VoidCallback? function;
  const MyButton({
    Key? key,
    this.text,
    this.textColor,
    this.bgColor,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      style: TextButton.styleFrom(
        backgroundColor: bgColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: function ?? () {},
    );
  }
}
