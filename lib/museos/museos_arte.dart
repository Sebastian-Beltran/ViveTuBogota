import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivetubogota/const.dart';
import 'package:vivetubogota/main_drawer.dart';



List museosArte = [
  museoA1,
  museoA2,
  museoA3,
  museoA4
];
final museoA1 = {
  "nombre": "Museo de Botero",
  "desc": "El Museo Botero está situado en La Candelaria, centro histórico y cultural de Bogotá. Alberga una numerosa colección de obras donadas a Colombia por el artista Fernando Botero con la intención de difundir las artes y la cultura en su país natal.",
  "imagen": "assets/museo_botero.jpg",
  "direccion": "Cl. 11 #4-41",
  "linkW": "https://www.banrepcultural.org/bogota/museo-botero"
};
final museoA2 = {
  "nombre": "Museo de Arte Colonial",
  "desc": "El Museo Colonial de Bogotá fue inaugurado el 6 de agosto de 1942 bajo los antecedentes del Presidente de la República Eduardo Santos Montejo y de su ministro de educación Germán Arciniegas.",
  "direccion": "Cra. 6 #9-77",
  "imagen": "assets/colonial.jpg"
};
final museoA3 = {
  "nombre": "Museo de Arte Moderno",
  "desc": "El Museo de Arte Moderno de Bogotá, también conocido como MAMBO, es una de las principales instituciones culturales y artísticas de Colombia.",
  "direccion": "Calle 24 N° 6-00",
  "imagen": "assets/moderno.jpg",
  "linkW": "https://www.mambogota.com"

};
final museoA4 = {
  "nombre": "Museo de Artes Gráficas",
  "desc": "En 1964 Tarcisio Higuera, tipógrafo de profesión, fundó el Museo de Artes Gráficas de la Imprenta Nacional de Colombia con motivo del centenario de la primera publicación del Diario Oficial.",
  "direccion": "Carrera 66 No. 24- 09",
  "imagen": "assets/artes-graficas.jpg",
  "linkW": "https://www.imprenta.gov.co"
};

class MuseosArte extends StatefulWidget {
  @override
  _MuseosArteState createState() => _MuseosArteState();
}

class _MuseosArteState extends State<MuseosArte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Museos de arte",
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
                        'assets/arte.svg',
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
                      itemCount: museosArte.length,
                      itemBuilder: (BuildContext context, int i) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'sitio', arguments: museosArte[i]);
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
                                    title: Text("${museosArte[i]['nombre']}"),
                                    subtitle: Text("${museosArte[i]['direccion']}"),
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
