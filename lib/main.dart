import 'package:flutter/material.dart';
import 'package:gunkpwa/widget/authen.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authen()
    );
  }
}