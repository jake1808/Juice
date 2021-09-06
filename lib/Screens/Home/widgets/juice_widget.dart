import 'package:flutter/material.dart';
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
              Container(
                margin: EdgeInsets.only(top: topPadding),
                decoration: BoxDecoration(
                  color: juices.color,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: topPadding,
                        left: leftPadding,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            juices.name,
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
                                const TextSpan(
                                  text: '\$',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: juices.price,
                                  style: const TextStyle(
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
                        juices.image,
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
