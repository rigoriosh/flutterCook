import 'package:flutter/material.dart';
import 'package:flutter_cook/src/pages/final_page.dart';

class PaginaScroll extends StatefulWidget {
  PaginaScroll({Key key}) : super(key: key);

  static final String routName = 'paginaScroll';

  @override
  PpaginaScrollState createState() => PpaginaScrollState();
}

class PpaginaScrollState extends State<PaginaScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _stackFinal(),
      ],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_up,
                  size: 70.0,
                  color: Colors.white,
                ),
                SizedBox(height: 250.0,),
                _btn(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      //color: Colors.white,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/fondo.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _stackFinal() {
    final styloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text(
            "11°",
            style: styloTexto,
          ),
          Text(
            "Miercoles",
            style: styloTexto,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _btn() {
    return Container(
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, PaginaFinal.routName);
        },
        shape: StadiumBorder(),
        child: Text(
          "Presentación Final",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        color: Color.fromRGBO(0, 151, 247, 1.0),
        padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
      ),
    );
  }
}
