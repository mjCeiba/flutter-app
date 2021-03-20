import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreen createState() => _FloatingActionButtonGreen();
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool fav = false;

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    this.fav = !this.fav;
  }

  void onPressFav() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(
          "Add to fav",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black54
        ),
      ),
      backgroundColor: Colors.white,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      child: Icon(
        this.fav ? Icons.favorite : Icons.favorite_border_outlined
      ),
      onPressed: onPressFav,
    );
  }
}
