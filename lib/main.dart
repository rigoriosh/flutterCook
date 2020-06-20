import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cook/src/pages/basico_page.dart';
import 'package:flutter_cook/src/pages/final_page.dart';
import 'package:flutter_cook/src/pages/scroll_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//ajusta el color del fondo de la barra de estado top
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));    
    //ajusta el color del fondo de la barra de estado top /* END */

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños ',
      initialRoute: BasicoPage.routName,
      routes: {
        BasicoPage.routName: (BuildContext context) => BasicoPage(),
        PaginaScroll.routName: (BuildContext context) => PaginaScroll(),
        PaginaFinal.routName: (BuildContext context) => PaginaFinal(),
      },
    );
  }
}
