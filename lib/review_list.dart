import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("Manuel", "1 Review 2 comments", "This is an amazing place"),
        new Review("Julian", "5 Review 4 comments", "I love beach"),
        new Review("Charris", "58 Review 14 comments", "The restaurant it's amazing"),
        new Review("Blanco", "128 Review 18 comments", "Idilius Place")
      ],
    );
  }
}
