import 'package:flutter/material.dart';

import 'my_button.dart';

class JuiceWidget extends StatelessWidget {
  const JuiceWidget({Key? key}) : super(key: key);

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
              Container(
                margin: EdgeInsets.only(top: topPadding),
                decoration: BoxDecoration(
                  color: const Color(0xFFDC691F),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: topPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            "Besom Orange Juice",
                            //TODO: replace text style
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: '25.99',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                            width: 80,
                            child: MyButton(
                              text: 'Buy Now',
                              textColor: Color(0xFFDC691F),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: topPadding,
                      left: leftPadding,
                    ),
                    child: SizedBox(
                      width: imageWidth,
                      child: Image.network(
                        "https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png",
                      ),
                    ),
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
