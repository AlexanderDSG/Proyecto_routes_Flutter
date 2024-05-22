import 'package:go_router/go_router.dart';
import 'package:proyecto_routes_app/Pages/detail.dart';
import 'package:proyecto_routes_app/Pages/list_prod.dart';
import 'package:proyecto_routes_app/Pages/shop_card.dart';
import 'package:proyecto_routes_app/main.dart'; 

class RouteNames {
  static String home = '/';
  static String detalles= '/detalles';
  static String listaProducto = '/ListaProd';
  static String tienda = '/tienda';
}
final router = GoRouter(routes:[
  GoRoute(
    path: RouteNames.home,
    builder: (context, state) =>const MyHomePage()
  ),
  GoRoute(
    path: RouteNames.detalles,
    builder: (context, state) =>const Detail()
  ),
    GoRoute(
    path: RouteNames.listaProducto,
    builder: (context, state) =>const ListProd()
  ),
  GoRoute(
    path: RouteNames.tienda,
    builder: (context, state) =>const ShopCard()
  ),
]);