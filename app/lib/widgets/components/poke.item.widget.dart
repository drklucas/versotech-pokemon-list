import 'package:app/config/theme.dart';
import 'package:app/controllers/poke.item.controller.dart';
import 'package:app/models/pokemon/poke.model.dart';
import 'package:app/widgets/components/abilities.list.widget.dart';
import 'package:app/widgets/components/stat.list.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PokeItemWidget extends StatefulWidget {
  final PokeModel item;
  const PokeItemWidget(this.item, {super.key});

  @override
  State<PokeItemWidget> createState() => _PokeItemWidgetState();
}

class _PokeItemWidgetState extends State<PokeItemWidget> {
  @override
  void initState() {
    super.initState();
    get();
  }

  PokeItemController controller = PokeItemController();

  bool loading = true;

  void get() async {
    controller.clearItem();
    await controller.get(context, url: widget.item.url);

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Observer(builder: (_) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text(
                          'Return',
                          style: Theme.of(context).textTheme.bodyLarge?.merge(
                                TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 6,
                      color: Colors.grey.shade200)
                ],
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  Image.network(
                    controller.item?.imageUrl ?? '',
                    // fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name: ',
                              style:
                                  Theme.of(context).textTheme.bodySmall?.merge(
                                        TextStyle(
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                            ),
                            Text(
                              '${controller.item?.name}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Height: ',
                              style:
                                  Theme.of(context).textTheme.bodySmall?.merge(
                                        TextStyle(
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                            ),
                            Text(
                              '${controller.item?.height}cm',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Weight: ',
                              style:
                                  Theme.of(context).textTheme.bodySmall?.merge(
                                        TextStyle(
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                            ),
                            Text(
                              '${controller.item?.weight}g',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 6,
                      color: Colors.grey.shade200)
                ],
              ),
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Abilities',
                          style: Theme.of(context).textTheme.labelMedium?.merge(
                                TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    AbilitiesListWidget(controller.item?.abilities ?? []),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 6,
                      color: Colors.grey.shade200)
                ],
              ),
              width: double.maxFinite,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Stats',
                        style: Theme.of(context).textTheme.labelMedium?.merge(
                              TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  StatListWidget(controller.item?.stats ?? []),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
