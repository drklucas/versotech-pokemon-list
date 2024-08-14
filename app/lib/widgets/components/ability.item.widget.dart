import 'package:app/models/pokemon/ability.model.dart';
import 'package:flutter/material.dart';

class AbilityItemWidget extends StatelessWidget {
  final Ability item; 
  const AbilityItemWidget(this.item, { super.key });

   @override
   Widget build(BuildContext context) {
       return Text('- ${item.name}'); 
  }
}