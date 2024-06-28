import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String icono = "assets/icons/default.svg";
  String estadoVictoria = " ";

  void _incrementCounter() {
    setState(() {
      _counter++;
      verificarEstado();
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
      verificarEstado();
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      verificarEstado();
    });
  }

  void verificarEstado(){
    switch(_counter){
      case 15: 
        estadoVictoria = "Has Ganado";
        icono = "assets/icons/win.svg";
      break;
      case 10:
        estadoVictoria = "Has Perdido";
        icono = "assets/icons/lose.svg";
      break;
      default: 
        estadoVictoria = " ";
        icono ="assets/icons/default";
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 37, 37),
        title: Text('Contador'),
      ),


      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const Text(
                'Veces que has presionado el boton',
                style: TextStyle(fontFamily: 'Heycomic', fontSize: 30),
              ),
              SvgPicture.asset(
                'assets/icons/arrow-down-svgrepo-com.svg',
                width: 100,
                height: 100,
              ),
              Text(
                '$_counter',
                style: TextStyle(fontFamily: 'Heycomic', fontSize: 30),
              ),
              Text(
                '$estadoVictoria',
                style: TextStyle(fontFamily: "Heycomic", fontSize: 30),
              ),

              SvgPicture.asset(icono, height: 100, width: 100,),

              Row(

                
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: _decreaseCounter,
              child: const Icon(Icons.minimize),
              tooltip: 'Decrease',
            ),
            FloatingActionButton(
              onPressed: _resetCounter,
              child: const Icon(Icons.restore),
              tooltip: 'Reset',
            ),
          ],
        ),
      ],
    );
  }
}
