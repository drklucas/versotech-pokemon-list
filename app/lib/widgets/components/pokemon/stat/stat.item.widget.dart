import 'package:app/models/pokemon/stat.model.dart';
import 'package:app/utils/size.dart';
import 'package:flutter/material.dart';

class StatItemWidget extends StatelessWidget {
  final Stat item;
  const StatItemWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: item.baseStat > 50
            ? Colors.green.shade500
            : item.baseStat < 50
                ? Colors.red.shade500
                : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.8, vertical: 2.4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${item.name}: ',
              style: Theme.of(context).textTheme.bodySmall?.merge(
                    TextStyle(
                      color: item.baseStat == 50
                          ? Colors.grey.shade600
                          : Colors.white,
                      fontSize: DeviceSize.isTabletDevice(context) ? 21 : null,
                    ),
                  ),
            ),
            Text(
              '${item.baseStat}',
              style: Theme.of(context).textTheme.bodyMedium?.merge(
                    TextStyle(
                      fontWeight: FontWeight.w600,
                      color: item.baseStat == 50
                          ? Colors.grey.shade700
                          : Colors.white,
                      fontSize: DeviceSize.isTabletDevice(context) ? 24 : null,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
