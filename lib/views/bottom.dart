import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_ui/colors.dart';
import 'package:quiz_ui/components/card_with_time_tile.dart';
import 'package:quiz_ui/components/cards.dart';
import 'package:quiz_ui/components/custom_tile.dart';
import 'package:motion_toast/motion_toast.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 2)),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DashBoard",
                    style: TextStyle(
                        color: HexColor('#484848'),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  RoundedButtonWithIcon(
                    radius: 10,
                    onPressed: () {
                      MotionToast.success(
                              title: "Save  Button Clicked",
                              titleStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              description: "Save Button Clicked toast",
                              descriptionStyle: TextStyle(fontSize: 12),
                              width: 300)
                          .show(context);
                    },
                    icon: Icons.file_download,
                    title: "",
                    buttonColor: Colors.purple,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      MotionToast.success(
                              title: "Total Tests Clicked",
                              titleStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              description: "Feature is under developement",
                              descriptionStyle: TextStyle(fontSize: 12),
                              width: 300)
                          .show(context);
                    },
                    child: cards(
                      title: 'Total Tests',
                      integer: '200',
                      color: "554FC1",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      MotionToast.success(
                              title: "Total Student Clicked",
                              titleStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              description: "Feature is under developement",
                              descriptionStyle: TextStyle(fontSize: 12),
                              width: 300)
                          .show(context);
                    },
                    child: cards(
                      title: 'Total Student',
                      integer: '250',
                      color: "07BC26",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 12, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      MotionToast.success(
                              title: "Total Quizes Clicked",
                              titleStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              description: "Feature is under developement",
                              descriptionStyle: TextStyle(fontSize: 12),
                              width: 300)
                          .show(context);
                    },
                    child: cards(
                      title: 'Total Quizes',
                      integer: '90',
                      color: "C928B4",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      MotionToast.success(
                              title: "Total Time Clicked",
                              titleStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              description: "Feature is under developementt",
                              descriptionStyle: TextStyle(fontSize: 12),
                              width: 300)
                          .show(context);
                    },
                    child: cards_time(
                      title: 'Total Time',
                      color: 'E8CD0D',
                      integer: "05:30",
                    ),
                  ),
                ],
              ),
            ),
            custom_tile(
                title: "All Batches",
                background_color: "#020087",
                icon_color: "#FF5700",
                title_color: "#FFFFFF"),
            custom_tile(
                title: "Certified Students",
                background_color: "#020087",
                icon_color: "#FF5700",
                title_color: "#FFFFFF"),
          ],
        ),
      ),
    );
  }
}
