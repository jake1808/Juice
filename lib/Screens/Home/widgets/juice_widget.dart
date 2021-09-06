import 'package:flutter/material.dart';
import 'package:juice/Screens/Juice_information/detail_page.dart';

import '../../../constants.dart';
import '../../../models/jucie.dart';
import 'my_button.dart';

class JuiceWidget extends StatelessWidget {
  final JuiceEntity juices;
  const JuiceWidget({Key? key, required this.juices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.25,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final topPadding = constraints.maxHeight * 0.2;
          final imageWidth = constraints.maxWidth * 0.35;
          final leftPadding = constraints.maxWidth * 0.1;
          return Stack(
            children: [
              CardBackground(topPadding: topPadding, juices: juices),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: topPadding,
                        left: leftPadding,
                      ),
                      child: JuiceText(juices: juices),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: topPadding,
                      left: leftPadding,
                    ),
                    child: JuiceImage(imageWidth: imageWidth, juices: juices),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class JuiceImage extends StatelessWidget {
  const JuiceImage({
    Key? key,
    required this.imageWidth,
    required this.juices,
  }) : super(key: key);

  final double imageWidth;
  final JuiceEntity juices;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidth,
      child: Image.network(
        juices.image,
      ),
    );
  }
}

class CardBackground extends StatelessWidget {
  const CardBackground({
    Key? key,
    required this.topPadding,
    required this.juices,
  }) : super(key: key);

  final double topPadding;
  final JuiceEntity juices;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topPadding),
      decoration: BoxDecoration(
        color: juices.color,
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}

class JuiceText extends StatelessWidget {
  const JuiceText({
    Key? key,
    required this.juices,
  }) : super(key: key);

  final JuiceEntity juices;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_constructors
        Text(
          juices.name,

          // ignore: prefer_const_constructors
          style: kTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: '\$',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: juices.price,
                style: kTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 32,
          width: 80,
          child: MyButton(
            text: 'Buy Now',
            textColor: juices.color,
            function: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JuiceDetaile()));
            },
          ),
        )
      ],
    );
  }
}
