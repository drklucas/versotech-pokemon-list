import 'package:app/models/pokemon/poke.model.dart';
import 'package:app/widgets/components/poke.item.widget.dart';
import 'package:flutter/material.dart';

class PokeItemScreen extends StatefulWidget {
  final PokeModel item;
  const PokeItemScreen(this.item, {super.key});

  @override
  State<PokeItemScreen> createState() => _PokeItemScreenState();
}

class _PokeItemScreenState extends State<PokeItemScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8), 
          child: PokeItemWidget(widget.item),
        ),
      ),
    );
  }
}
