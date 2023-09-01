import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _reduceCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter App"),
        elevation: 0,
        actions: const [
          IconButton(
              onPressed: null,
              tooltip: "Settings",
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("Number of clicks"), Text('$_counter')],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              onPressed: _reduceCounter,
              backgroundColor: Colors.red,
              tooltip: "Reduce counter",
              child: const Icon(Icons.remove)),
          FloatingActionButton(
              onPressed: _resetCounter,
              backgroundColor: Colors.red,
              tooltip: "Reset counter",
              child: const Icon(Icons.calculate)),
          FloatingActionButton(
              onPressed: _incrementCounter,
              backgroundColor: Colors.red,
              tooltip: "Increment counter",
              child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
