import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuenta de Google',
      home: const MyHomePage(title: 'Cuenta de Google'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: const [
          const Row(
            children: [
              SizedBox(
                // color: Colors.red[200],
                child: FittedBox(
                  child:
                    Column(
                      children: [
                        Text('Tu cuenta esta protegida',
                        // textAlign: TextAlign.left,
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        Text('La verificacion de seguridad reviso tu cuenta y no encontro accion es recomendadas',
                          style: TextStyle(fontSize: 16),
                        )
                      ]  
                    ),
                )
              ),
              SizedBox(
                child: Row(
                  children: [
                    Icon(Icons.favorite), 
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
