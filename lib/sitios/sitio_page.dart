import 'package:flutter/material.dart';
import 'package:vivetubogota/const.dart';

class SitioPage extends StatefulWidget {
  @override
  _SitioPageState createState() => _SitioPageState();
}

class _SitioPageState extends State<SitioPage> {
  @override
  Widget build(BuildContext context) {
    dynamic sitio = ModalRoute.of(context).settings.arguments;

    // if(eventData != null){
    //  session = eventData;
    // }
    // print(sitio['imagen']);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220.0,
                  width: double.infinity,
                  child: Material(
                    // color: Color.fromRGBO(29, 47, 74, 1),
                    color: colorBlueStrong,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 34.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          sitio['nombre'].length > 13 ?
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "${sitio['nombre']}",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ) :
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "${sitio['nombre']}",
                              style: TextStyle(
                                  fontSize: 45.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,),
                            ),
                          ),
                          // Text("SITIO", style: TextStyle(fontSize: 45.0, color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Center(
                    child: Container(
                      width: 320.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(sitio['imagen'], fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  width: double.infinity,
                  height: 230.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: colorBlueStrong,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                      child: Text(
                        "${sitio['desc']}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,

                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(60.0),
                              color: colorBlueStrong,
                              child: Icon(
                                Icons.place,
                                size: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Container(
                              width: 220.0,
                              child: Text(
                                "${sitio['direccion']}",
                                style: TextStyle(
                                    fontSize: 18.0, color: colorBlueStrong),
                              ),
                            ),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                              width: 320.0, height: 1, color: Colors.grey),
                        ),
                      ),
                      sitio['horario'] == null ?
                      Text("") :
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(60.0),
                              color: colorBlueStrong,
                              child: Icon(
                                Icons.date_range,
                                size: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Container(
                              width: 220.0,
                              child: Text(
                                "${sitio['horarios']}",
                                style: TextStyle(
                                    fontSize: 18.0, color: colorBlueStrong),
                              ),
                            ),
                          )
                        ],
                      ),
                      sitio['horario'] == null ? 
                      Text("") :
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                              width: 320.0, height: 1, color: Colors.grey),
                        ),
                      ),
                      sitio['linkW'] == null ?
                      Text("") :
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(60.0),
                              color: colorBlueStrong,
                              child: Icon(
                                Icons.link,
                                size: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Container(
                              width: 220.0,
                              child: Text(
                                "${sitio['linkW']}",
                                style: TextStyle(
                                    fontSize: 18.0, color: colorBlueStrong),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
