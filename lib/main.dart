import 'package:dairyapp/home_screens/main_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'home_screens/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
        accentColor: Colors.red),
    routes: <String, WidgetBuilder>{'/a': (BuildContext context) => MainView()},
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadScreen();
  }

  Future<Timer> loadScreen() async {
    return Timer(Duration(seconds: 3), _loadUI);
  }

  void _loadUI() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showSplashScreen(),
    );
  }

  Widget _showSplashScreen() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/splash.jpg'), fit: BoxFit.cover)),
    );
  }
}