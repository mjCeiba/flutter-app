import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_flutter_app/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new CardImage(),
          new CardImage(),
          new CardImage(),
          new CardImage(),
          new CardImage(),
          new CardImage(),
        ],
      ),
    );
  }
}
