import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivetubogota/const.dart';
import 'package:vivetubogota/main_drawer.dart';

List iglesias = [iglesia1, iglesia2, iglesia3, iglesia4, iglesia5];
final iglesia1 = {
  "nombre": "Basílica de Nuestra Señora de Lourdes",
  "desc":
      "La Basílica Santuario Metropolitano de Nuestra Señora de Lourdes es un Templo Parroquial de culto católico bajo la advocación mariana de la Virgen de Lourdes.",
  "direccion": "Cra. 13 #63-27",
  "imagen": "assets/basilica.jpg"
};
final iglesia2 = {
  "nombre": "Iglesia de Santa Bárbara",
  "desc":
      "La iglesia de Santa Bárbara es un templo católico situado en la carrera Séptima con calle Quinta de la ciudad de Bogotá. ",
  "direccion": "Cra. 7 - Calle 5",
  "imagen": "assets/santa_barbara.jpeg"
};
final iglesia3 = {
  "nombre": "Iglesia de la Porciúncula",
  "desc":
      "La iglesia de Nuestra Señora de los Ángeles de la Porciúncula, o simplemente iglesia de la Porciúncula es un templo religioso de culto católico dedicado a la Porciúncula, el lugar donde comenzó el movimiento Franciscano.",
  "direccion": "Cl. 72 #11-81",
  "imagen": "assets/porciuncula.jpeg"
};
final iglesia4 = {
  "nombre": "Santuario Nuestra Señora del Carmen",
  "desc":
      "El Santuario Nacional Nuestra Señora del Carmen es un templo católico dedicado a la Virgen María bajo la advocación del Carmen. Se localiza en barrio La Candelaria, en el centro de Bogotá.",
  "direccion": "Cra. 5 #8-36",
  "imagen": "assets/carmen.jpg"
};
final iglesia5 = {
  "nombre": "Monserrate",
  "desc":
      "El cerro de Monserrate es el más conocido de los cerros Orientales de Bogotá. Junto a Guadalupe es uno de los cerros tutelares de la ciudad. Monserrate tiene una altitud de 3152 m y se ubica sobre la cordillera oriental.",
  "imagen": "assets/monserrate.jpg",
  "direccion": "Cr2 E #21-48",
  "horarios": "Miércoles a lunes de 5:00 a.m. a 1:00 p.m ",
  "linkW": "https://www.idrd.gov.co/sendero-monserrate-administrado-idrd"
};

class IglesiasPage extends StatefulWidget {
  @override
  _IglesiasPageState createState() => _IglesiasPageState();
}

class _IglesiasPageState extends State<IglesiasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Iglesias",
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
                        'assets/iglesia.svg',
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
                      itemCount: iglesias.length,
                      itemBuilder: (BuildContext context, int i) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'sitio',
                                arguments: iglesias[i]);
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
                                      "assets/iglesia (1).svg",
                                      width: 35.0,
                                    ),
                                    title: Text("${iglesias[i]['nombre']}"),
                                    subtitle:
                                        Text("${iglesias[i]['direccion']}"),
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
