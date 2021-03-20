import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  String imagePath = "assets/img/122.jpg";

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 340.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0, bottom: 10.0),
      decoration:
      BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
          ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0,7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        new FloatingActionButtonGreen()
      ],
    );
  }
}
