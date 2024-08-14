import 'package:app/models/poke.model.dart';
import 'package:app/models/service.data.dart';
import 'package:app/services/poke.list.service.dart';
import 'package:app/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'poke.list.controller.g.dart';

class PokeListController = _PokeListController with _$PokeListController;

abstract class _PokeListController with Store {
  @observable
  ObservableList<PokeModel> items = ObservableList<PokeModel>();

  @action
  get(BuildContext context) async {
    ServiceData serviceData = await PokeListService.get(context);

    if(serviceData.ok) {
      final List results = serviceData.data['results'];
      items.clear();
      for (var poke in results) {
        items.add(PokeModel.fromMap(poke));
      }
    } else {
      AppToast.error(serviceData.msg); 
    }
  }
}
