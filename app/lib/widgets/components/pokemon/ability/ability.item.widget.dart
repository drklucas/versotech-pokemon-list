import 'package:app/models/pokemon/ability.model.dart';
import 'package:app/utils/size.dart';
import 'package:flutter/material.dart';

class AbilityItemWidget extends StatelessWidget {
  final Ability item;
  const AbilityItemWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.8, vertical: 2.4),
        child: Text(
          item.name,
          style: Theme.of(context).textTheme.bodySmall?.merge(
                TextStyle(
                  fontSize: DeviceSize.isTabletDevice(context) ? 21 : null,
                ),
              ),
        ),
      ),
    );
  }
}
