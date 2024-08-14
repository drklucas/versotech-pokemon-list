import 'package:app/config/colors.dart';
import 'package:app/widgets/components/pokemon/poke.list.widget.dart';
import 'package:flutter/material.dart';

import '../../config/theme.dart';

class PokeListScreen extends StatelessWidget {
  const PokeListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: AppColors.mainAppColor,
        elevation: 0,
        title: Text(
          'Pokémon List',
          style: Theme.of(context).textTheme.titleLarge?.merge(
                const TextStyle(
                  color: Colors.white,
                ),
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: 26,
              width: 26,
              child: Image.asset(
                'assets/pokeball.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child:
              // Column(
              // children: [
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         'Pokémon List',
              //         style: Theme.of(context).textTheme.titleLarge,
              //       ),
              //       SizedBox(
              //         height: 26,
              //         width: 26,
              //         child: Image.asset(
              //           'assets/pokeball.png',
              //           fit: BoxFit.cover,
              //         ),
              //       ),

              //     ],
              //   ),
              // ),
              PokeListWidget(),
          // ],
          // ),
        ),
      ),
    );
  }
}
