import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_routes_app/Routes/router.dart';
import 'package:proyecto_routes_app/Widgets/buttons_section.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back),
          onPressed: ()=>context.go(RouteNames.home),
        ),
        title: const Center(child: Text('TIENDA')
        ),
      ),
      body: const Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Aliqua anim quis incididunt velit exercitation fugiat reprehenderit cillum. Proident tempor nostrud pariatur est adipisicing fugiat sit laboris deserunt duis exercitation laborum eiusmod. Eiusmod elit mollit magna incididunt fugiat esse est sit pariatur dolor sunt tempor minim pariatur. Deserunt cupidatat voluptate nisi adipisicing ipsum nulla consectetur sit elit ad id id enim eiusmod. Eiusmod consectetur ad laboris excepteur adipisicing dolore magna nulla fugiat proident. Occaecat deserunt cupidatat nisi sint.'),
          ButtonsSection()
        ], 
      ),
    );
  }
}