import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Gestos extends StatefulWidget {
  const Gestos({Key? key}) : super(key: key);

  @override
  _GestosState createState() => _GestosState();
}

class _GestosState extends State<Gestos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 37, 37),
        title: Text('Contador'),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //detalles
          children: [
            Text('Aquí están los gestos',
                style: TextStyle(fontFamily: "Heycomic", fontSize: 30)),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
        //boton para volver
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
