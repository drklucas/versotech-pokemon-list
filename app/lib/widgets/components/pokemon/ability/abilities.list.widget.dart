import 'package:app/models/pokemon/ability.model.dart';
import 'package:app/widgets/components/pokemon/ability/ability.item.widget.dart';
import 'package:flutter/material.dart';

class AbilitiesListWidget extends StatelessWidget {
  final List<Ability> items;
  const AbilitiesListWidget(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      
      spacing: 4.0, // Espaçamento horizontal entre os itens
      runSpacing: 4.0, // Espaçamento vertical entre as linhas
      children: List.generate(
        items.length,
        (index) {
          return AbilityItemWidget(items[index]); 
        },
      ),
    );
  }
}
