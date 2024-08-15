import 'package:app/config/theme.dart';
import 'package:app/models/pokemon/poke.model.dart';
import 'package:app/utils/size.dart';
import 'package:app/widgets/screens/poke.item.screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokeListItemWidget extends StatelessWidget {
  final PokeModel item;
  const PokeListItemWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceSize.isTabletDevice(context) ? 125 : 75,
      width: double.infinity,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PokeItemScreen(item)));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          decoration: AppTheme.boxDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      item.name,
                      style: AppTheme.theme.textTheme.labelMedium?.merge(
                        TextStyle(
                          fontSize:
                              DeviceSize.isTabletDevice(context) ? 24 : null,
                        ),
                      ),
                    ),
                  ],
                ),
                CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
