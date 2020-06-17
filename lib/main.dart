

import 'package:flutter/material.dart';
import 'package:flutter_cook/src/pages/basico_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños ',
      initialRoute: BasicoPage.routName,
      routes: {
        BasicoPage.routName: (BuildContext context) => BasicoPage(),
      },
    );
  }
}