import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBottonNaigationbar extends StatelessWidget {
  const CustomBottonNaigationbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*BehindList(),*/ Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: Container(
              color: Colors.white.withOpacity(0.2),
              height: 64,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                        'https://flutter4fun.com/wp-content/uploads/2021/09/Home.png'),
                    Image.network(
                        'https://flutter4fun.com/wp-content/uploads/2021/09/Search.png'),
                    Image.network(
                        'https://flutter4fun.com/wp-content/uploads/2021/09/Heart.png'),
                    Image.network(
                        'https://flutter4fun.com/wp-content/uploads/2021/09/account.png'),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
