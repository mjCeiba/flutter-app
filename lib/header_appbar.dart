import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/card_image_list.dart';
import 'package:platzi_trips_flutter_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new GradientBack("Popular"),
        new CardImageList()
      ],
    );
  }
}
