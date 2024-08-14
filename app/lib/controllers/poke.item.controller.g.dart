// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke.item.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokeItemController on _PokeItemController, Store {
  late final _$itemAtom =
      Atom(name: '_PokeItemController.item', context: context);

  @override
  PokeModel? get item {
    _$itemAtom.reportRead();
    return super.item;
  }

  @override
  set item(PokeModel? value) {
    _$itemAtom.reportWrite(value, super.item, () {
      super.item = value;
    });
  }

  late final _$getAsyncAction =
      AsyncAction('_PokeItemController.get', context: context);

  @override
  Future get(BuildContext context, {required String url}) {
    return _$getAsyncAction.run(() => super.get(context, url: url));
  }

  late final _$_PokeItemControllerActionController =
      ActionController(name: '_PokeItemController', context: context);

  @override
  dynamic clearItem() {
    final _$actionInfo = _$_PokeItemControllerActionController.startAction(
        name: '_PokeItemController.clearItem');
    try {
      return super.clearItem();
    } finally {
      _$_PokeItemControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
item: ${item}
    ''';
  }
}
