import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 37, 37),
        title: Text('Contador'),
      ),

      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Color.fromARGB(1, 219, 191, 29),
              child: const Center(
                child: Text('uno',
                style: TextStyle(fontFamily: "Heycomic", fontSize: 30))
              ),
            ),
            Container(
              height: 50,
              color: Color.fromARGB(1, 219, 191, 29),
              child: const Center(
                child: Text('dos',
                style: TextStyle(fontFamily: "Heycomic", fontSize: 30))
              ),
            ),
            Container(
              height: 50,
              color: Color.fromARGB(1, 219, 191, 29),
              child: const Center(
                child: Text('tres',
                style: TextStyle(fontFamily: "Heycomic", fontSize: 30))
              ),
            ),
          ],



        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Regresar"),
        ),
      ],

    );
  }
}
