import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_ui/colors.dart';
import 'package:quiz_ui/views/bottom.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

int _currentIndex = 0;
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int index;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Image.asset(
              'assets/icons/menu.png',
              height: 80,
              width: 100,
            ),
            tooltip: 'Menu',
            onPressed: () {},
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        elevation: 8,
        selectedColor: textcolor,
        strokeColor: Colors.blue,
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            title: Text(
              "Home",
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: textcolor),
            ),
            icon: Icon(Icons.home_outlined),
          ),
          CustomNavigationBarItem(
            title: Text(
              "Profile",
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: textcolor),
            ),
            icon: Icon(Icons.person_outline),
          ),
          CustomNavigationBarItem(
            title: Text(
              "Question",
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: textcolor),
            ),
            icon: Icon(Icons.question_answer_outlined),
          ),
          CustomNavigationBarItem(
            title: Text(
              "Start T/Q",
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: textcolor),
            ),
            icon: Icon(Icons.play_circle_outline),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
      backgroundColor: backgroundcolor,
      body: Bottom(),
    );
  }
}
