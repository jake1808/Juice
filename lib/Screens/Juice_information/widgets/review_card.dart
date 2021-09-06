// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:juice/repository/review_list.dart';

import 'simple_rating_bar.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 500),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'Besom Orange Juice',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SimplaeRatingBar(),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
                'Drinking Orange Juice is not only enhances health body also strengthens muscles',
                style: TextStyle(color: Color(0xFFB0B1B4), fontSize: 16)),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'Reviews',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  'See all',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Color(0xFFD81C33),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ReviewList(),
          ],
        ),
      ),
    );
  }
}

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        itemBuilder: (_, index) {
          if (index == reviewImages.length) {
            return Image.network(addImageUrl);
          }
          return Image.network(reviewImages[index]);
        },
        separatorBuilder: (_, index) => SizedBox(
          width: 18,
        ),
        itemCount: reviewImages.length + 1,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
