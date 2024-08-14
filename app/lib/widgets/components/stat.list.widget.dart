import 'package:app/models/pokemon/stat.model.dart';
import 'package:app/widgets/components/stat.item.widget.dart';
import 'package:flutter/material.dart';

class StatListWidget extends StatelessWidget {
  final List<Stat> items; 
  const StatListWidget(this.items, { super.key });

   @override
   Widget build(BuildContext context) {
       return ListView.builder(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return StatItemWidget(items[index]);
      },
    );
  }
}