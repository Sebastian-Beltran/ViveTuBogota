import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivetubogota/const.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'initPage');
          },
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 130.0,
              color: colorBlueStrong,
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      Text(
                        "  ViveTuBogotá",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20.0),
            child: Text(
              "Categorias",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 35.0),
            child: GestureDetector(
              onTap: (){
                // Navigator.pushNamed(context, 'museos');
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/museo (2).svg",
                    width: 20.0,
                  ),
                  Text(
                    "  Museos",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 55.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'museos_arte');
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/pintar.svg",
                    width: 20.0,
                  ),
                  Text(
                    "  Museos de arte",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 55.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'museos_historia');
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/desplazarse.svg",
                    width: 20.0,
                  ),
                  Text(
                    "  Museos de historia",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 55.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'museos_ciencia');
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/ciencias.svg",
                    width: 20.0,
                  ),
                  Text(
                    "  Museos de ciencia",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 35.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'parques');
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/arbol.svg",
                    width: 20.0,
                  ),
                  Text(
                    "  Parques",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 35.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'iglesias');

              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/iglesia (1).svg",
                    width: 20.0,
                  ),
                  Text(
                    "  Iglesias",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(width: 260.0, height: 1, color: Colors.grey),
          ),
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 35.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'ayuda');
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/informacion.svg", width: 20.0,),
                    Text(
                      "  Ayuda",
                      style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0),
            child: Image.asset(
              "assets/UCC.png",
              width: 110.0,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "Creditos",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              "Sebastian Beltran Gonzalez",
              textAlign: TextAlign.center,
            )
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              "Julian David Soache",
              textAlign: TextAlign.center,
            )
          ),
        ),
      ],
    ));
  }
}
