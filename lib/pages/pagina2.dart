import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  Pagina2({Key? key}) : super(key: key);

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soy la segunda vista"),
      ),
      body: Container(
        child: Center(
          child: Text("estas en la segunda pantalla"),
        ),
      ),
    );
  }
}
