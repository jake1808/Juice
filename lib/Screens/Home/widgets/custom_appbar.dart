import 'package:flutter/material.dart';

class CustomeAppbar extends StatelessWidget {
  const CustomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(
        left: 20,
        top: 50,
        right: 20,
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
              'https://flutter4fun.com/wp-content/uploads/2021/09/menu.png'),
          const Text('Besom.',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
          Image.network(
              'https://flutter4fun.com/wp-content/uploads/2021/09/bag.png')
        ],
      ),
    );
  }
}
