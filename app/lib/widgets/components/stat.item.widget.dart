import 'package:app/models/pokemon/stat.model.dart';
import 'package:flutter/material.dart';

class StatItemWidget extends StatelessWidget {
  final Stat item;
  const StatItemWidget(this.item, { super.key });

   @override
   Widget build(BuildContext context) {
      return Text('- ${item.name}');
  }
}