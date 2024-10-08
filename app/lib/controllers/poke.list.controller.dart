import 'package:app/models/pagination.meta.dart';
import 'package:app/models/pokemon/poke.model.dart';
import 'package:app/models/service.data.dart';
import 'package:app/services/poke.item.service.dart';
import 'package:app/services/poke.list.service.dart';
import 'package:app/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'poke.list.controller.g.dart';

class PokeListController = _PokeListController with _$PokeListController;

abstract class _PokeListController with Store {
  @observable
  ObservableList<PokeModel> items = ObservableList<PokeModel>();

  @observable
  PaginationMeta meta = PaginationMeta(limit: 15, offset: 0, count: 0);

  @action
  get(BuildContext context) async {
    ServiceData serviceData = await PokeListService.get(
      context,
      limit: meta.limit,
      offset: meta.offset,
    );

    if (serviceData.ok) {
      meta.count = serviceData.data['count'];
      if (meta.count > meta.offset) meta.offset = meta.offset + 10;

      final List results = serviceData.data['results'];

      int count = 1;
      for (var poke in results) {
        PokeModel pokeData = PokeModel.fromMap(poke);
        pokeData.imageUrl =
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${(meta.offset -10) + count}.png';
        items.add(pokeData);
        count++; 
      }
    } else {
      AppToast.error(serviceData.msg);
    }
  }
}
