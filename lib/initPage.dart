import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:vivetubogota/main_drawer.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


const List<String> images = [
  "assets/monserrate.jpg",
  "assets/maloka-museo.jpg",
  "assets/museo_botero.jpg",
  "assets/planetario.jpg",
  "assets/parque_simon.jpeg",
  
];
//--------------------------------------------------------------------------------
//Sitios swiper de imagenes
List sitios = [
  sitio0,
  sitio1,
  sitio2,
  sitio3,
  sitio4,
];
final sitio0 = {
  "nombre": "Monserrate",
  "desc": "El cerro de Monserrate es el más conocido de los cerros Orientales de Bogotá. Junto a Guadalupe es uno de los cerros tutelares de la ciudad. Monserrate tiene una altitud de 3152 m y se ubica sobre la cordillera oriental.",
  "imagen": "assets/monserrate.jpg",
  "direccion": "Cr2 E #21-48",
  "horarios" : "Miércoles a lunes de 5:00 a.m. a 1:00 p.m ",
  "linkW": "https://www.idrd.gov.co/sendero-monserrate-administrado-idrd"
};
final sitio1 = {
  "nombre": "Maloka",
  "desc": "Maloka es un museo interactivo sobre ciencia y tecnología ubicado en el barrio Ciudad Salitre en la localidad de Fontibón de Bogotá, Colombia. El sitio abrió sus puertas el 6 de agosto de 1998.",
  "imagen": "assets/maloka-museo.jpg",
  "direccion": "Cra. 68d #No 24A - 51",
  "horarios" : "Viernes 2:00pm a 7:00pm ",
  "linkW": "https://www.maloka.org/"
};

final sitio2 = {
  "nombre": "Museo de Botero",
  "desc": "El Museo Botero está situado en La Candelaria, centro histórico y cultural de Bogotá. Alberga una numerosa colección de obras donadas a Colombia por el artista Fernando Botero con la intención de difundir las artes y la cultura en su país natal.",
  "imagen": "assets/museo_botero.jpg",
  "direccion": "Cl. 11 #4-41",
  "linkW": "https://www.banrepcultural.org/bogota/museo-botero"
};
final sitio3 = {
  "nombre": "Planetario",
  "desc": "El Planetario de Bogotá es un centro cultural y planetario ubicado en el Centro Internacional de Bogotá en Colombia, dentro del Parque de la Independencia.",
  "imagen": "assets/planetario.jpg",
  "direccion": "Cl. 26b #5-93",
  "linkW": "https://planetariodebogota.gov.co/"
};
final sitio4 = {
  "nombre": "Simon Bolivar",
  "desc": "El parque metropolitano Simón Bolívar es el más grande e importante de la ciudad por varias razones: su estratégica ubicación en el corazón de Bogotá",
  "imagen": "assets/parque_simon.jpeg",
  "direccion": "Av. Calle 53 y Av. Esmeralda",
  "linkW": "https://www.idrd.gov.co/parque-metropolitano-simon-bolivar"
};
//---------------------------------------------------------------------------------
List parques = [
  parque1,
  parque2,
  parque3,
  parque4,
  parque5
];
final parque1 = {
  "nombre": "Parque Simon Bolivar",
  "desc": "El parque metropolitano Simón Bolívar es el más grande e importante de la ciudad por varias razones: su estratégica ubicación en el corazón de Bogotá",
  "direccion": "Av. Calle 53 y Av. Esmeralda",
  "imagen": "assets/parque_simon.jpeg"
};
final parque2 = {
  "nombre": "Parque San Andres",
  "desc": "El Parque San Andrés es uno de los principales del noroccidente de Bogotá. Se encuentra ubicado muy cerca del Portal de la 80 del sistema de TransMilenio.",
  "direccion": "Cl. 82 N 100 A 91",
  "imagen": "assets/parque_sanAndres.jpeg"
};
final parque3 = {
  "nombre": "Parque Mirador de los Nevados",
  "desc": "El Parque Mirador de los Nevados es un parque metropolitano ubicado en la localidad de Suba, al Norte de Bogotá en Colombia, específicamente en la Carrera 86A n.º 145-50.",
  "direccion": "Calle 147B - Cra. 86",
  "imagen": "assets/parque_mirador.jpg"
};
final parque4 = {
  "nombre": "Parque de la independencia",
  "desc": "El Parque más antiguo de esta lista también es el que más transformaciones ha visto. Comenzó como una celebración del centenario de la independencia, en 1910, cuando contaba con pequeños palacetes.",
  "direccion": "Esq. Calle 26, Entrada A La KR7",
  "imagen": "assets/parque_indepe.jpg"
};
final parque5 = {
  "nombre": "Parque de los novios",
  "desc": "Este parque, que ha sido denominado El Lago o Parque de Los Novios, está ubicado en la Calle 63 # 45-10. Cuenta con una superficie de 23 hectáreas y es uno de los recintos lúdicos más reconocidos por los bogotanos.",
  "direccion": "Cl. 63 #45-10",
  "imagen": "assets/parque_novios.jpg"
};
//--------------------------------------------------------------------------
List iglesias = [
  iglesia1,
  iglesia2,
  iglesia3,
  iglesia4,
  iglesia5
];
final iglesia1 = {
  "nombre": "Basílica de Nuestra Señora de Lourdes",
  "desc": "La Basílica Santuario Metropolitano de Nuestra Señora de Lourdes es un Templo Parroquial de culto católico bajo la advocación mariana de la Virgen de Lourdes.",
  "direccion": "Cra. 13 #63-27",
  "imagen": "assets/basilica.jpg"
};
final iglesia2 = {
  "nombre": "Iglesia de Santa Bárbara",
  "desc": "La iglesia de Santa Bárbara es un templo católico situado en la carrera Séptima con calle Quinta de la ciudad de Bogotá. ",
  "direccion": "Cra. 7 - Calle 5",
  "imagen": "assets/santa_barbara.jpeg"
};
final iglesia3 = {
  "nombre": "Iglesia de la Porciúncula",
  "desc": "La iglesia de Nuestra Señora de los Ángeles de la Porciúncula, o simplemente iglesia de la Porciúncula es un templo religioso de culto católico dedicado a la Porciúncula, el lugar donde comenzó el movimiento Franciscano.",
  "direccion": "Cl. 72 #11-81",
  "imagen": "assets/porciuncula.jpeg"
};
final iglesia4 = {
  "nombre": "Santuario Nuestra Señora del Carmen",
  "desc": "El Santuario Nacional Nuestra Señora del Carmen es un templo católico dedicado a la Virgen María bajo la advocación del Carmen. Se localiza en barrio La Candelaria, en el centro de Bogotá.",
  "direccion": "Cra. 5 #8-36",
  "imagen": "assets/carmen.jpg"
};
final iglesia5 = {
  "nombre": "Monserrate",
  "desc": "El cerro de Monserrate es el más conocido de los cerros Orientales de Bogotá. Junto a Guadalupe es uno de los cerros tutelares de la ciudad. Monserrate tiene una altitud de 3152 m y se ubica sobre la cordillera oriental.",
  "imagen": "assets/monserrate.jpg",
  "direccion": "Cr2 E #21-48",
  "horarios" : "Miércoles a lunes de 5:00 a.m. a 1:00 p.m ",
  "linkW": "https://www.idrd.gov.co/sendero-monserrate-administrado-idrd"
};

//----------------------------------------------------------------
List museos = [
  museo1,
  museo2,
  museo3,
  museo4,
  museo5
];
final museo1 = {
  "nombre": "Museo Nacional",
  "desc": "El Museo Nacional de Colombia es el un museo ubicado en Colombia, con una edad de 197 años, es el museo más antiguo del país y uno de los más antiguos de América.",
  "direccion": "Cra. 7 #28-66",
  "imagen": "assets/museo_nacional.jpeg"
};
final museo2 = {
  "nombre": "Museo de Arte Colonial",
  "desc": "El Museo Colonial de Bogotá fue inaugurado el 6 de agosto de 1942 bajo los antecedentes del Presidente de la República Eduardo Santos Montejo y de su ministro de educación Germán Arciniegas.",
  "direccion": "Cra. 6 #9-77",
  "imagen": "assets/colonial.jpg"
};
final museo3 = {
  "nombre": "Museo del oro",
  "desc": "El Museo del Oro del Banco de la República de Colombia es una institución pública la cual su fin es la adquisición, conservación y exposición de piezas de orfebrería y alfarería de culturas indígenas del periodo precolombino de la actual Colombia",
  "direccion": "Cra. 6 #15-88",
  "imagen": "assets/oro.jpg"
};
final museo4 = {
  "nombre": "Museo de los niños",
  "desc": "El Museo de los Niños fue un centro de formación en la apreciación, apropiación y valoración de la cultura científica, a través de experiencias significativas para el pensamiento creativo y crítico.",
  "direccion": "Cra 60 N° 63-27",
  "imagen": "assets/niños_museo.jpeg"
};
final museo5 = {
  "nombre": "Museo geológico nacional",
  "desc": "El museo geológico nacional José Royo y Gómez abrió sus puertas a un nuevo mundo en el que fueron encontrando paso a paso un nuevo fósil.",
  "direccion": "Diagonal 53 #34 - 53 N0",
  "imagen": "assets/geologico.png"
};
final museo6 = {
  "nombre": "Museo del 20 de julio",
  "desc": "El Museo de la Independencia - Casa del Florero, antes llamado Museo del 20 de julio, es un museo de Bogotá, Colombia, que se ubica en una construcción colonial en la esquina noreste de la Plaza de Bolívar.",
  "direccion": "Cra. 7 #11-28",
  "imagen": "assets/20julio.jpg"
};

//-------------------------------------------------------------------

// const List<String> sitios = [
//   // "sitio1",
//   // "sitio2",
//   // "sitio3",
//   // "sitio4"
//   sitio1
  
// ];

class _SplashScreenState extends State<SplashScreen> {

  int opc = 1;

  @override
  void initState() {
    super.initState();
    // opc = 0;
    // Timer(
    //     Duration(seconds: 6),() => Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (BuildContext context) {
    //           // return OnboardingScreen();
    //       }
    //       )
    //     )
    // );
  }

  // GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 28.0),),
        //
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(
          
          color: Colors.black,
          size: 40.0
        ),
      ),
      drawer: MainDrawer(
        
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 15.0, top: 5.0),
                  child: Text(
                    "Sitios sugeridos",
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                ),

              ),
              Container(
                height: _screenSize.height * 0.35,
                child: Swiper(
                  // pagination: SwiperPagination(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(
                        onTap: (){
                          print("sitio: --- $index");
                          print("SITIOS: ${sitios[index]}");

                          Navigator.pushNamed(context, 'sitio', arguments: sitios[index]);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                    );
                  },
                  autoplay: false,
                  scrollDirection: Axis.horizontal,
                  loop: true,

                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0, left: 25.0),
                  child: Text(
                    "Categorias",
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector(
                        onTap: (){
                          
                          setState(() {
                            opc = 0;
                          });
                        },
                        child: Container(
                          // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: 60.0,
                          height: 60.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(90.0),
                            elevation: 7.0,
                            child: Center(
                              child: SvgPicture.asset("assets/museo.svg", width: 35.0,),
                            ),
                          ),
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: GestureDetector(
                      onTap: (){
                        setState(() {
                            opc = 1;
                        });
                      },
                      child: Container(
                          // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: 60.0,
                          height: 60.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(90.0),
                            elevation: 7.0,
                            child: Center(
                              child: SvgPicture.asset("assets/iglesia.svg", width: 35.0,),
                            ),
                          ),
                          
                        ),
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            opc = 2;
                        });
                        },
                        child: Container(
                          // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: 60.0,
                          height: 60.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(90.0),
                            elevation: 7.0,
                            child: Center(
                              child: SvgPicture.asset("assets/parque (1).svg", width: 35.0,),
                            ),
                          ),
                          
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              opc == 0 ?
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Museos",
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        height: 220.0,
                        child: ListView.builder(
                          itemCount: museos.length,
                          itemBuilder: (BuildContext context,int i){
                            return GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, 'sitio', arguments: museos[i]);
                              },
                              child: Container(
                                width: 50.0,
                                child: Card(
                                  elevation: 3.0,
                                  margin: EdgeInsets.fromLTRB(25.0,7.0,25.0,5.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text("${museos[i]['nombre']}"),
                                        subtitle: Text("${museos[i]['direccion']}"),
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
                  ),
                ],
              ) :
              opc == 1 ?
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Iglesias",
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        height: 220.0,
                        child: ListView.builder(
                          itemCount: iglesias.length,
                          itemBuilder: (BuildContext context,int i){
                            return GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, 'sitio', arguments: iglesias[i]);
                              },
                              child: Container(
                                width: 50.0,
                                child: Card(
                                  elevation: 3.0,
                                  margin: EdgeInsets.fromLTRB(25.0,7.0,25.0,5.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text("${iglesias[i]['nombre']}"),
                                        subtitle: Text("${iglesias[i]['direccion']}"),
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
                  ),
                ],
              ) :
              opc == 2 ?
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Parques",
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        height: 220.0,
                        child: ListView.builder(
                          itemCount: parques.length,
                          itemBuilder: (BuildContext context,int i){
                            return GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, 'sitio', arguments: parques[i]);
                              },
                              child: Container(
                                width: 50.0,
                                child: Card(
                                  elevation: 3.0,
                                  margin: EdgeInsets.fromLTRB(25.0,7.0,25.0,5.0),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text("${parques[i]['nombre']}"),
                                        subtitle: Text("${parques[i]['direccion']}"),
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
                  ),
                ],
              ) :
              opc == 3 ?
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Restaurantes",
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        height: 220.0,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context,int i){
                            return Container(
                              width: 50.0,
                              child: Card(
                                elevation: 3.0,
                                margin: EdgeInsets.fromLTRB(25.0,7.0,25.0,5.0),
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text("Restaurantes #${i+1}"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ) :
              opc == 4 ?
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Tiendas",
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        height: 220.0,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context,int i){
                            return Container(
                              width: 50.0,
                              child: Card(
                                elevation: 3.0,
                                margin: EdgeInsets.fromLTRB(25.0,7.0,25.0,5.0),
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text("Tienda #${i+1}"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ) :
              Container(child: Text("$opc"),)
            ],
          ),
        ),
      ),
    );
  }
}