import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 37, 37),
        title: Text('ejemplo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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
          ],
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
