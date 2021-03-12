import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivetubogota/main_drawer.dart';

class AyudaPage extends StatefulWidget {
  @override
  _AyudaPageState createState() => _AyudaPageState();
}

class _AyudaPageState extends State<AyudaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Centro de ayuda", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 28.0),),
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
              // Padding(padding: const EdgeInsets.only(top: 35.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SvgPicture.asset("assets/informacion.svg", width: 35.0,),
              //       SizedBox(
              //         width: 25.0,
              //       ),
              //       Text(
              //         "Pagina de ayuda",
              //         style: TextStyle(
              //           fontSize: 24.0
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text(
                      "¿Que es ViveTuBogota?", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                    )
                  ),
                )
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text(
                      "ViveTuBogota es un app pensada para turistas, que te mostrará los sitios mas populares de la ciudad de bogota."
                    )
                  ),
                )
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text(
                      "¿Tiene algun precio usar ViveTuBogota?", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                    )
                  ),
                )
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text("De ninguna forma, esta app es gratiuta para todas las personas interesadas en conocer los sitios mas populares de la ciudad ;)")
                  ),
                )
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text(
                      "¿Debo tener conexion a internet para poder usarla?", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                    )
                  ),
                )
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text("No una de las principales cualidades de esta aplicacion es que la informacion la tienes en tu telefono asi no tengas conexión a internet")
                  ),
                )
              ),
              
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Container(
                    child: SvgPicture.asset(
                      "assets/logo.svg",
                      height: 120.0,
                    ),
                  ),
                )
              ),
              
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Container(
                    width: 280.0,
                    child: Text(
                      "Aplicacion desarrollada por Sebastian Beltran y Julian David Soache",
                      textAlign: TextAlign.center,
                    )
                  ),
                )
              ),
            ],
          ),
      ),
        ),
    );
  }
}