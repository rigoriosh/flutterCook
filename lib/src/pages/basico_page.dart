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
          Image(
              image: NetworkImage(
                  'https://www.xtrafondos.com/wallpapers/amanecer-anime-chica-silueta-paisaje-3721.jpg')),
          Container(
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
                ),
                Text("41"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
