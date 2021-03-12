import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const.dart';
import '../main_drawer.dart';

List museosCiencia = [
  museoC1,
  museoC2,
  museoC3,
  museoC4,
  museoC5
];
final museoC1 = {
  "nombre": "Maloka",
  "desc": "Maloka es un museo interactivo sobre ciencia y tecnología ubicado en el barrio Ciudad Salitre en la localidad de Fontibón de Bogotá, Colombia. El sitio abrió sus puertas el 6 de agosto de 1998.",
  "imagen": "assets/maloka-museo.jpg",
  "direccion": "Cra. 68d #No 24A - 51",
  "horarios" : "Viernes 2:00pm a 7:00pm ",
  "linkW": "https://www.maloka.org/"
};
final museoC2 = {
  "nombre": "Planetario",
  "desc": "El Planetario de Bogotá es un centro cultural y planetario ubicado en el Centro Internacional de Bogotá en Colombia, dentro del Parque de la Independencia.",
  "imagen": "assets/planetario.jpg",
  "direccion": "Cl. 26b #5-93",
  "linkW": "https://planetariodebogota.gov.co/"
};
final museoC3 = {
  "nombre": "Museo de los niños",
  "desc": "El Museo de los Niños fue un centro de formación en la apreciación, apropiación y valoración de la cultura científica, a través de experiencias significativas para el pensamiento creativo y crítico.",
  "direccion": "Cra 60 N° 63-27",
  "imagen": "assets/niños_museo.jpeg"
};
final museoC4 = {
  "nombre": "Museo geológico nacional",
  "desc": "El museo geológico nacional José Royo y Gómez abrió sus puertas a un nuevo mundo en el que fueron encontrando paso a paso un nuevo fósil.",
  "direccion": "Diagonal 53 #34 - 53 N0",
  "imagen": "assets/geologico.png"
};
final museoC5 = {
  "nombre": "Museo del Mar",
  "desc": "El Museo del Mar de la Universidad Jorge Tadeo Lozano está ubicado en la ciudad de Bogotá, Colombia.Fue creado en la década de los 60's por la facultad de Ciencias del Mar.",
  "direccion": "Cra. 4 #22-61",
  "imagen": "assets/mar.jpg"
};

class MuseosCiencia extends StatefulWidget {
  @override
  _MuseosCienciaState createState() => _MuseosCienciaState();
}

class _MuseosCienciaState extends State<MuseosCiencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Museos de ciencia",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 28.0),
          ),
          //
          elevation: 0,
          backgroundColor: colorBlueStrong,
          iconTheme: new IconThemeData(color: Colors.white, size: 40.0),
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 140.0,
                    width: double.infinity,
                    child: Material(
                      color: colorBlueStrong,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(15.0)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: SvgPicture.asset(
                        'assets/ciencias (1).svg',
                        width: 160.0,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: museosCiencia.length,
                      itemBuilder: (BuildContext context, int i) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'sitio', arguments: museosCiencia[i]);
                          },
                          child: Container(
                            width: 50.0,
                            child: Card(
                              elevation: 3.0,
                              margin: EdgeInsets.fromLTRB(25.0, 7.0, 25.0, 5.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: SvgPicture.asset("assets/museo (2).svg", width: 35.0,),
                                    title: Text("${museosCiencia[i]['nombre']}"),
                                    subtitle: Text("${museosCiencia[i]['direccion']}"),
                                    trailing: Icon(Icons.keyboard_arrow_right) ,

                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
