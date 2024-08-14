// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke.list.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokeListController on _PokeListController, Store {
  late final _$itemsAtom =
      Atom(name: '_PokeListController.items', context: context);

  @override
  ObservableList<PokeModel> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<PokeModel> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$metaAtom =
      Atom(name: '_PokeListController.meta', context: context);

  @override
  PaginationMeta get meta {
    _$metaAtom.reportRead();
    return super.meta;
  }

  @override
  set meta(PaginationMeta value) {
    _$metaAtom.reportWrite(value, super.meta, () {
      super.meta = value;
    });
  }

  late final _$getAsyncAction =
      AsyncAction('_PokeListController.get', context: context);

  @override
  Future get(BuildContext context) {
    return _$getAsyncAction.run(() => super.get(context));
  }

  @override
  String toString() {
    return '''
items: ${items},
meta: ${meta}
    ''';
  }
}
