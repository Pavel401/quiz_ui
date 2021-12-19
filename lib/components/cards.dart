import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../colors.dart';

class cards extends StatefulWidget {
  var integer = "";
  String color;
  var title = "";
  cards(
      {required this.color,
      required this.integer,
      required this.title,
      Key? key})
      : super(key: key);

  @override
  _cardsState createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Expanded(
        child: Container(
          height: 190,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.integer,
                      style: TextStyle(
                          color: HexColor("#" + widget.color),
                          fontSize: 42,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 2),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: textcolor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
