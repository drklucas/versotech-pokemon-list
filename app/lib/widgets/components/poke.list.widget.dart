import 'package:app/controllers/poke.list.controller.dart';
import 'package:app/widgets/components/poke.list.item.widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter/material.dart';

class PokeListWidget extends StatefulWidget {
  const PokeListWidget({super.key});

  @override
  State<PokeListWidget> createState() => _PokeListWidgetState();
}

class _PokeListWidgetState extends State<PokeListWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    get();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        get();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final PokeListController controller = PokeListController();

  bool loading = true;

  void get() async {
    await controller.get(context);
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Observer(
      builder: (_) {
        return ListView.builder(
          controller: _scrollController,
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return PokeListItemWidget(controller.items[index]);
          },
        );
      },
    );
  }
}
