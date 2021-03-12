import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivetubogota/const.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vivetubogota/initPage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return SplashScreen();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorBlueStrong,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: SvgPicture.asset(
                  "assets/logo.svg",
                  height: 140.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vive",
                        style: TextStyle(
                            color: Color.fromRGBO(197, 213, 237, 1),
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "TuBogotá",
                        style: TextStyle(
                            color: Color.fromRGBO(58, 107, 178, 1),
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SpinKitCubeGrid(
                  color: Color.fromRGBO(197, 213, 237, 1),
                  size: 35.0,
                  // controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Text(
                    "¡Los Sitios turisticos de Bogotá!",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
