import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          color: Color(0xFF56575a),
          fontSize: 16.0,
          fontFamily: "Lato",
        ),
        textAlign: TextAlign.left,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            "Manchabla",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        new ButtonPurple("Navigate"),
      ],
    );
  }
}
