import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detalles extends StatefulWidget {
  const Detalles({Key? key}) : super(key: key);

  @override
  _DetallesState createState() => _DetallesState();
}

class _DetallesState extends State<Detalles> {
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
          //detalles de la app
          children: [
            Text('Aquí hay detalles de la aplicación',
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
