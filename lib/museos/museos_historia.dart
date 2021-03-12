import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivetubogota/const.dart';
import 'package:vivetubogota/main_drawer.dart';

List museosHistoria = [
  museoH1,
  museoH2,
  museoH3,
  museoH4,
  museoH5

];
final museoH1 = {
  "nombre": "Museo Nacional",
  "desc": "El Museo Nacional de Colombia es el un museo ubicado en Colombia, con una edad de 197 años, es el museo más antiguo del país y uno de los más antiguos de América.",
  "direccion": "Cra. 7 #28-66",
  "imagen": "assets/museo_nacional.jpeg"
};
final museoH2 = {
  "nombre": "Museo del oro",
  "desc": "El Museo del Oro del Banco de la República de Colombia es una institución pública la cual su fin es la adquisición, conservación y exposición de piezas de orfebrería y alfarería de culturas indígenas del periodo precolombino de la actual Colombia",
  "direccion": "Cra. 6 #15-88",
  "imagen": "assets/oro.jpg"
};
final museoH3 = {
  "nombre": "Museo del 20 de julio",
  "desc": "El Museo de la Independencia - Casa del Florero, antes llamado Museo del 20 de julio, es un museo de Bogotá, Colombia, que se ubica en una construcción colonial en la esquina noreste de la Plaza de Bolívar.",
  "direccion": "Cra. 7 #11-28",
  "imagen": "assets/20julio.jpg"
};
final museoH4 = {
  "nombre": "Museo Militar de Colombia",
  "desc": "Inaugurado el 6 de agosto de 1982, contiene una importante colección de esculturas, documentos históricos, condecoraciones, uniformes militares, armas, vehículos y maquetas.",
  "direccion": "Calle 10 # 4-92",
  "imagen": "assets/militar.jpg"
};
final museoH5 = {
  "nombre": "Museo Histórico de la Policía Nacional",
  "desc": "Este museo tiene como finalidad la exposición y apreciación de la historia y la evolución de la Policía Nacional en el país, encontrando información sobre leyes y estatutos.",
  "direccion": "Cl. 9 #9-27",
  "imagen": "assets/policia.jpeg"
};


class MuseosHistoria extends StatefulWidget {
  @override
  _MuseosHistoriaState createState() => _MuseosHistoriaState();
}

class _MuseosHistoriaState extends State<MuseosHistoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Museos de historia",
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
                        'assets/historia.svg',
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
                      itemCount: museosHistoria.length,
                      itemBuilder: (BuildContext context, int i) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'sitio', arguments: museosHistoria[i]);
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
                                    title: Text("${museosHistoria[i]['nombre']}"),
                                    subtitle: Text("${museosHistoria[i]['direccion']}"),
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
