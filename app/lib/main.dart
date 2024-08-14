import 'package:app/config/theme.dart';
import 'package:app/providers/app.provider.dart';
import 'package:app/routes/app/router.dart';
import 'package:app/widgets/components/splash.widget.dart';
import 'package:app/widgets/screens/poke.list.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const SplashWidget()); 
  Future.delayed(const Duration(seconds: 1)); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider( 
      providers: AppProvider.items,
      child: MaterialApp(
        title: 'PokeList',
        routes: AppRouter.routes,
        theme: AppTheme.theme, 
        home: const PokeListScreen(), 
      ),
    );
  }
}