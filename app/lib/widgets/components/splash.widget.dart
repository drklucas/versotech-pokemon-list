import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeList',
      home: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Center(
          child: Image.asset('assets/pokeball.png'),
        ),
      ),
    );
  }
}
