import 'package:app/models/pokemon/poke.model.dart';
import 'package:app/models/service.data.dart';
import 'package:app/services/poke.item.service.dart';
import 'package:app/services/poke.list.service.dart';
import 'package:app/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'poke.item.controller.g.dart';

class PokeItemController = _PokeItemController with _$PokeItemController;

abstract class _PokeItemController with Store {
  @observable
  PokeModel? item;

  @action
  get(BuildContext context, {required String url}) async {
    ServiceData serviceData = await PokeItemService.get(
      context,
      url: url, 
    );

    if (serviceData.ok) {
      item = PokeModel.fromMap(serviceData.data);
    } else {
      AppToast.error(serviceData.msg);
    }
  }

  @action
  clearItem() => item = null;
}
