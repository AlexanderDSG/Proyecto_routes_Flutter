import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_routes_app/Routes/router.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blueAccent)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => context.go(RouteNames.detalles),
                child: const Column(
                  children: [Icon(Icons.details), Text("Detalles")],
                ),
              ),
              GestureDetector(
                onTap: () => context.go(RouteNames.listaProducto),
                child: const Column(
                  children: [Icon(Icons.shopping_bag), Text("Lista")],
                ),
              ),
              GestureDetector(
                onTap: () => context.go(RouteNames.tienda),
                child: const Column(
                  children: [Icon(Icons.shop), Text("Tienda")],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
