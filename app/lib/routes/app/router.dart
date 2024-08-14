import 'package:app/routes/app/routes.dart';
import 'package:app/widgets/screens/poke.list.screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.poke.LIST: (context) => const PokeListScreen(), 
  }; 
}