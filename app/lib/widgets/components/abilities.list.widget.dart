import 'package:app/models/pokemon/ability.model.dart';
import 'package:app/widgets/components/ability.item.widget.dart';
import 'package:flutter/material.dart';

class AbilitiesListWidget extends StatelessWidget {
  final List<Ability> items;
  const AbilitiesListWidget(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AbilityItemWidget(items[index]);
      },
    );
  }
}
