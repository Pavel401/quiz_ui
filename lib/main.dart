import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_ui/colors.dart';
import 'package:quiz_ui/views/bottom.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

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
    var _currentIndex = 0;
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
        selectedColor: Color(0xff040307),
        bubbleCurve:Curves.linear,
        strokeColor: Colors.blue,
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.search),
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
