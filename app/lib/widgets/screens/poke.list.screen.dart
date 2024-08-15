import 'package:app/config/colors.dart';
import 'package:app/utils/size.dart';
import 'package:app/widgets/components/pokemon/poke.list.widget.dart';
import 'package:flutter/material.dart';

import '../../config/theme.dart';

class PokeListScreen extends StatefulWidget {
  const PokeListScreen({super.key});

  @override
  State<PokeListScreen> createState() => _PokeListScreenState();
}

class _PokeListScreenState extends State<PokeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Stack(
        children: [
          Positioned(
            top: DeviceSize.isTabletDevice(context) ? -210 : -96,
            right: DeviceSize.isTabletDevice(context) ? -210 : -96,
            child: Opacity(
              opacity: 0.45,
              child: Image.asset(
                'assets/pokeball.png',
                width: DeviceSize.isTabletDevice(context) ? 480 : 280,
                height: DeviceSize.isTabletDevice(context) ? 480 : 280,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pokedex',
                          style: Theme.of(context).textTheme.titleLarge?.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey.shade800,
                                  fontSize: DeviceSize.isTabletDevice(context) ? 28 : 19,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: PokeListWidget()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
