import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_routes_app/Routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          useMaterial3: true,
          //poner colores de flutter por defecto
          colorSchemeSeed: const Color.fromARGB(255, 29, 216, 122)),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('PAGINA PRINCIPAL')),
        backgroundColor: Colors.deepOrange[100],
      ),
      body: const Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WELCOME'),
          Text('Qui occaecat culpa enim aliquip id duis enim ad consectetur. Amet officia incididunt aliqua laboris esse reprehenderit eiusmod. Commodo incididunt anim aliqua minim dolor veniam do.')
        ], 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go(RouteNames.listaProducto),
        child:
            const Icon(Icons.arrow_forward), // Icono de flecha hacia adelante
      ),
    );
  }
}
