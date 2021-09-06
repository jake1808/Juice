import 'package:flutter/material.dart';

import '../../../models/jucie.dart';

class JuiceCard extends StatelessWidget {
  const JuiceCard({
    Key? key,
    required this.juice,
  }) : super(key: key);

  final JuiceEntity juice;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final imageHeight = constraints.maxHeight * 0.7;
          final imageHorizontalMargin = constraints.maxWidth * 0.15;
          final imageBottomMargin = constraints.maxHeight * 0.07;
          return Container(
            decoration: BoxDecoration(
              color: juice.color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: imageHorizontalMargin,
                  right: imageHorizontalMargin,
                  bottom: imageBottomMargin,
                ),
                child: Image.network(
                  'https://flutter4fun.com/wp-content/uploads/2021/09/full.png',
                  height: imageHeight,
                ),
              ),
            ),
            margin: const EdgeInsets.only(bottom: 26),
          );
        },
      ),
      aspectRatio: 0.86,
    );
  }
}
