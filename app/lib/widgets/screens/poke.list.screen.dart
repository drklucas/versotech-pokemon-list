import 'package:app/widgets/components/poke.list.widget.dart';
import 'package:flutter/material.dart';

import '../../config/theme.dart';

class PokeListScreen extends StatelessWidget {
  const PokeListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pokemon List',
          style: AppTheme.theme.textTheme.titleMedium,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: PokeListWidget(),
        ),
      ),
    );
  }
}
