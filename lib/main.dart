import 'package:flutter/material.dart';
import 'package:vivetubogota/ayuda_page.dart';
import 'package:vivetubogota/categorias/iglesias_page.dart';
import 'package:vivetubogota/categorias/museos_page.dart';
import 'package:vivetubogota/categorias/parques_page.dart';
import 'package:vivetubogota/initPage.dart';
import 'package:vivetubogota/museos/museos_arte.dart';
import 'package:vivetubogota/museos/museos_ciencia.dart';
import 'package:vivetubogota/museos/museos_historia.dart';
import 'package:vivetubogota/onBoarding_page.dart';
import 'package:vivetubogota/sitios/sitio_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ViveTuBogotá',
      initialRoute: 'on_boarding',
      routes: {
        //Home
        'initPage': (BuildContext context) => SplashScreen(),
        //onBoarding
        'on_boarding': (BuildContext context) => OnBoardingPage(),
        //Sitios
        'sitio': (BuildContext context) => SitioPage(),
        //ayuda
        'ayuda': (BuildContext context) => AyudaPage(),
        //Categorias
        //Museos
        'museos': (BuildContext context) => MuseosPage(),
        'museos_arte': (BuildContext context) => MuseosArte(),
        'museos_ciencia': (BuildContext context) => MuseosCiencia(),
        'museos_historia': (BuildContext context) => MuseosHistoria(),
        //----------
        'iglesias': (BuildContext context) => IglesiasPage(),
        'parques': (BuildContext context) => ParquePage(),
      
      }
    );
  }
}

