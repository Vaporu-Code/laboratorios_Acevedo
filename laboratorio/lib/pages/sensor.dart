import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sensor extends StatefulWidget {
  const Sensor({Key? key}) : super(key: key);

  @override
  _SensorState createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
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
            Text('Aquí están los sensores',
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
