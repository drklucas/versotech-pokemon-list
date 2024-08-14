import 'package:flutter/material.dart';

class PokeListWidget extends StatelessWidget {

  const PokeListWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return ListView.builder(
         shrinkWrap: true, 
         physics: const NeverScrollableScrollPhysics(),
         itemCount: 1,
         itemBuilder: (BuildContext context, int index) {
           return Container();
         },
       );
  }
}