import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';
import '../main_drawer.dart';

List parques = [parque1, parque2, parque3, parque4, parque5];
final parque1 = {
  "nombre": "Parque Simon Bolivar",
  "desc":
      "El parque metropolitano Simón Bolívar es el más grande e importante de la ciudad por varias razones: su estratégica ubicación en el corazón de Bogotá",
  "direccion": "Av. Calle 53 y Av. Esmeralda",
  "imagen": "assets/parque_simon.jpeg"
};
final parque2 = {
  "nombre": "Parque San Andres",
  "desc":
      "El Parque San Andrés es uno de los principales del noroccidente de Bogotá. Se encuentra ubicado muy cerca del Portal de la 80 del sistema de TransMilenio.",
  "direccion": "Cl. 82 N 100 A 91",
  "imagen": "assets/parque_sanAndres.jpeg"
};
final parque3 = {
  "nombre": "Parque Mirador de los Nevados",
  "desc":
      "El Parque Mirador de los Nevados es un parque metropolitano ubicado en la localidad de Suba, al Norte de Bogotá en Colombia, específicamente en la Carrera 86A n.º 145-50.",
  "direccion": "Calle 147B - Cra. 86",
  "imagen": "assets/parque_mirador.jpg"
};
final parque4 = {
  "nombre": "Parque de la independencia",
  "desc":
      "El Parque más antiguo de esta lista también es el que más transformaciones ha visto. Comenzó como una celebración del centenario de la independencia, en 1910, cuando contaba con pequeños palacetes.",
  "direccion": "Esq. Calle 26, Entrada A La KR7",
  "imagen": "assets/parque_indepe.jpg"
};
final parque5 = {
  "nombre": "Parque de los novios",
  "desc":
      "Este parque, que ha sido denominado El Lago o Parque de Los Novios, está ubicado en la Calle 63 # 45-10. Cuenta con una superficie de 23 hectáreas y es uno de los recintos lúdicos más reconocidos por los bogotanos.",
  "direccion": "Cl. 63 #45-10",
  "imagen": "assets/parque_novios.jpg"
};

class ParquePage extends StatefulWidget {
  @override
  _ParquePageState createState() => _ParquePageState();
}

class _ParquePageState extends State<ParquePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Parques",
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
                        'assets/parque (1).svg',
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
                      itemCount: parques.length,
                      itemBuilder: (BuildContext context, int i) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'sitio',
                                arguments: parques[i]);
                          },
                          child: Container(
                            width: 50.0,
                            child: Card(
                              elevation: 3.0,
                              margin: EdgeInsets.fromLTRB(25.0, 7.0, 25.0, 5.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/arbol.svg",
                                      width: 35.0,
                                    ),
                                    title: Text("${parques[i]['nombre']}"),
                                    subtitle: Text("${parques[i]['direccion']}"),
                                    trailing: Icon(Icons.keyboard_arrow_right),
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
