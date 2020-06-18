import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  //const BasicoPage({Key key}) : super(key: key);
  static final String routName = 'paginaBasica';
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _imagen(),
          _primeraFila(),
          _segundaFila(),
          _campoTexto()
        ],
      ),
    );
  }

  Image _imagen() {
    return Image(
        image: NetworkImage(
            'https://www.xtrafondos.com/wallpapers/amanecer-anime-chica-silueta-paisaje-3721.jpg'));
  }

  Container _primeraFila() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "cvvvvcvc",
                  style: estiloTitulo,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "fffffff",
                  style: estiloSubTitulo,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100.0,
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text("41"),
        ],
      ),
    );
  }

  Widget _segundaFila() {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      _accion(Icons.call, 'CALL'),
      _accion(Icons.near_me, 'ROUTE'),
      _accion(Icons.share, 'SHARE'),            
    ]
    );
  }

  Widget _accion(IconData icono, String texto) {
    return Column(
        children: <Widget>[
          Icon(
            icono,
            color: Colors.blue,
            size: 40.0,
          ),
          SizedBox(height: 10.0,),
          Text(
            texto,          
            style: TextStyle(color: Colors.blue, fontSize: 15.0),
          )
        ],
      );
  }

  Widget _campoTexto() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'Commodo sint est reprehenderit sunt non voluptate amet deserunt eu officia ipsum irure adipisicing. Lorem laborum ea labore deserunt veniam voluptate laboris consectetur Lorem sit dolore excepteur. Esse occaecat sint deserunt ad sunt.',
        textAlign: TextAlign.justify,
        ),
    );
  }
}
