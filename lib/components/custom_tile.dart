import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:hexcolor/hexcolor.dart';

class custom_tile extends StatefulWidget {
  String title=" ";
  String background_color=" ";
  String icon_color="";
  String title_color=" ";
   custom_tile({ required this.title,required this.background_color,required this.icon_color,required this.title_color,Key? key }) : super(key: key);

  @override
  _custom_tileState createState() => _custom_tileState();
}

class _custom_tileState extends State<custom_tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),

            height: 90,
            child: Card(
              color: HexColor(widget.background_color),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text(widget.title,style: TextStyle(color: HexColor(widget.title_color),fontSize: 20,fontWeight: FontWeight.w400),),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left: 8,right: 8),
                   child: RoundedButtonWithIcon(
                      onPressed: (){},
                      icon:Icons.east,
                      
                      title: "",
                      buttonColor: HexColor(widget.icon_color),
                    ),
                 ),
                ],
              ),
            ),
          );
  }
}