import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText;

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(
                content: Text("Navegando")
            )
        );
      },
      child: Container(
        height: 50.0,
        width: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Lato",
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
