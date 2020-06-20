
import 'package:flutter/material.dart';
import 'package:flutter_cook/src/pages/scroll_pages.dart';

class BasicoPage extends StatelessWidget {
  //const BasicoPage({Key key}) : super(key: key);
  static final String routName = 'paginaBasica';
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _imagen(),
              _primeraFila(),
              _segundaFila(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
              _campoTexto(),
            ],
          ),
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        child: Icon(Icons.queue_play_next, color: Colors.black,),
        onPressed: (){
          print("object");
          Navigator.pushNamed(context, PaginaScroll.routName)
        }), */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(context, PaginaScroll.routName);
          print("object");
        },
        child: Icon(Icons.queue_play_next, color: Colors.black,),
        //backgroundColor: Colors.green,
      ),
    );
  }

  Widget _imagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://www.xtrafondos.com/wallpapers/amanecer-anime-chica-silueta-paisaje-3721.jpg'),
        height: 350.0,
        fit: BoxFit.cover,
      ),
    );
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
        ]);
  }

  Widget _accion(IconData icono, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icono,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.blue, fontSize: 15.0),
        )
      ],
    );
  }

  Widget _campoTexto() {
    return SafeArea(
      child: Container(
        //padding: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Commodo sint est reprehenderit sunt non voluptate amet deserunt eu officia ipsum irure adipisicing. Lorem laborum ea labore deserunt veniam voluptate laboris consectetur Lorem sit dolore excepteur. Esse occaecat sint deserunt ad sunt.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
