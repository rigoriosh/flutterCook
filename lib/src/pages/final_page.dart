import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PaginaFinal extends StatelessWidget {
  const PaginaFinal({Key key}) : super(key: key);
  static final routName = "paginaFinal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),                
        centerTitle: true,        
        title: Text("paginal slices"),
      ),
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_titulos(), _bodyFinal()],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: _barraBottonNavigatio(),
      bottomNavigationBar: _themaBottonNavitationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );
    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]),
            borderRadius: BorderRadius.circular(100.0),
          ),
        ));
    final posicionPink = -100.0;
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
            top: posicionPink,
            //left: posicionPink,
            child: cajaRosa),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Classify transaction",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Classify this transaction into a particular category",
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

  Widget _themaBottonNavitationBar(BuildContext context) {
    return new Theme(
      //coloca y modifica los stilos originales del bottom navigation bar
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              //cambia el extilo de los iconos secundarios
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), title: Container()),
        BottomNavigationBarItem(
            title: Container(), icon: Icon(Icons.bubble_chart)),
        BottomNavigationBarItem(
            title: Container(), icon: Icon(Icons.supervised_user_circle)),
      ]),
    );
  }

  Widget _bodyFinal() {
    return Table(
      children: [
        TableRow(children: [
          _botonRedondeoado(
              Icons.border_all, "General", Colors.blue, Colors.blue),
          _botonRedondeoado(
              Icons.access_alarm, "Alarma", Colors.red, Colors.red),
        ]),
        TableRow(children: [
          _botonRedondeoado(
              Icons.access_time, "Tiempo", Colors.green, Colors.green),
          _botonRedondeoado(
              Icons.accessibility, "Acesibilidad", Colors.amber, Colors.white),
        ]),
        TableRow(children: [
          _botonRedondeoado(
              Icons.account_balance, "Balance", Colors.purple, Colors.white),
          _botonRedondeoado(
              Icons.adb, "Data Base", Colors.cyan, Colors.white),
        ]),
        TableRow(children: [
          _botonRedondeoado(
              Icons.work, "Trabajar", Colors.yellow, Colors.white),
          _botonRedondeoado(
              Icons.zoom_out_map, "Zoom", Colors.deepOrange, Colors.white),
        ]),
      ],
    );
  }

  Widget _botonRedondeoado(
      IconData icono, String texto, Color colorBTN, Color colorTexto) {
    return Container(
      height: 180.0,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)),
      child: ClipRect(//para hacer borroso el fondo
        child: BackdropFilter(//para hacer borroso el fondo
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),//para hacer borroso el fondo
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: colorBTN,
                radius: 40.0,
                child: Icon(
                  icono,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              Text(texto, style: TextStyle(color: colorBTN, fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}
