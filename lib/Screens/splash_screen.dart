import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:meticulous/Constants/constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
    Navigator.of(context).pushReplacementNamed(WEB_VIEW);
  }

  @override
  Future<void> initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 3));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset(
                  'assets/logo.png',
                  width: animation.value * 300,
                  height: animation.value * 300,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: Text(
                //     "ZK CHEMISTRY",
                //     style: TextStyle(
                //         color: Colors.orange[300],
                //         fontSize: 40,
                //         fontWeight: FontWeight.bold),
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
