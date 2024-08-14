import 'package:app/models/poke.model.dart';
import 'package:app/models/service.data.dart';
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
   get(BuildContext context) async {
    ServiceData serviceData = await PokeListService.get(context);

    if(serviceData.ok) {
      final List results = serviceData.data['results'];
      //TODO
    } else {
      AppToast.error(serviceData.msg); 
    }
  }
}