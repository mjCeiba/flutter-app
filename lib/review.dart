import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String name;
  String detail;
  String comment;
  String imagePath ="assets/img/122.jpg";

  Review(this.name, this.detail, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        detail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
          DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath))),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetail
      ],
    );
  }
}
