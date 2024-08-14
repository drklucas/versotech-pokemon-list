import 'package:app/models/pokemon/stat.model.dart';
import 'package:app/widgets/components/pokemon/stat/stat.item.widget.dart';
import 'package:flutter/material.dart';

class StatListWidget extends StatelessWidget {
  final List<Stat> items;
  const StatListWidget(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4.0, 
      runSpacing: 4.0, 
      children: List.generate(
        items.length,
        (index) {
          return StatItemWidget(items[index]); 
        },
      ),
    );
  }
}
