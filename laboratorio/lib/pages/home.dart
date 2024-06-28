import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laboratorio/pages/lista.dart';
import 'detalles.dart';
import 'detalles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  
  State<Home> createState() {
    print('función createState [crear statado]');
    print('..........................');
    return _HomeState();
  } 
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String icono = "assets/icons/default.svg";
  String estadoVictoria = " ";

  //lab7
  _MyHomePageState() {
    print('constructor de _HomeState [creando objeto]');
    print('..........................');
  }

  void initState() {
    super.initState();
    print('Función initState [Inicializando el estado actual]');
    print('initState [mounted = $mounted]');
    print('..........................');
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    print('función didChangeDependencies [Cambiar Dependencias]');
    print('..........................');
  }

  void didUpdateWidget(covariant Home oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('función didUpdateWidget [Actualizar Widget]');
    print('..........................');
  }

  void setState(VoidCallback fn) {
    super.setState(fn);
    print('función setState [Reestablecer estado]');
    print('..........................');
  }

  void deactivate() {
    print('función deactivate [remover widget]');
    print('..........................');
    super.deactivate();
  }

  void dispose() {
    super.dispose();
    print('función dispose: eliminando');
    print('dispose: mounted = $mounted');
    print('..........................');
  }

  void reassemble() {
    super.reassemble();
    print('función reassemble: mounted = $mounted');
  }


  //temas del counter
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

  //condición de victoria
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
        icono ="assets/icons/default.svg";
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

              //botones del counter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: _decreaseCounter,
                    child: const Icon(Icons.minimize),
                  ),
                  FloatingActionButton(
                    onPressed: _resetCounter,
                    child: const Icon(Icons.restore),
                  ),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                ],
                
              ),

            ],
          ),
        ),
      ),

      //botones siguientes pantallas
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
        //detalles
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Detalles())
            ); 
          },
            child: const Text("Detalles")
        ),
        //lista
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Lista())
            ); 
          },
            child: const Text("Lista")
        ),
      
      ]
        
      
    );
  }
}
