import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../colors.dart';

class cards_time extends StatefulWidget {
  var integer="";
  
  String color;
  var title=""; 
   cards_time({required this.color,required this.integer,required this.title,Key? key}) : super(key: key);

  @override
  _cards_timeState createState() => _cards_timeState();
}

class _cards_timeState extends State<cards_time> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 180,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                 "hrs : mins",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: textcolor),
                )
              ],
            ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text(
                        widget.integer,
                        style: TextStyle(
                            color: HexColor("#"+widget.color),
                            fontSize: 42,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
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
    );
  }
}
