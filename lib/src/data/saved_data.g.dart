// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Saved_data on _Saved_data, Store {
  final _$savedAtom = Atom(name: '_Saved_data.saved');

  @override
  Set<WordPair> get saved {
    _$savedAtom.context.enforceReadPolicy(_$savedAtom);
    _$savedAtom.reportObserved();
    return super.saved;
  }

  @override
  set saved(Set<WordPair> value) {
    _$savedAtom.context.conditionallyRunInAction(() {
      super.saved = value;
      _$savedAtom.reportChanged();
    }, _$savedAtom, name: '${_$savedAtom.name}_set');
  }

  final _$_Saved_dataActionController = ActionController(name: '_Saved_data');

  @override
  dynamic addToOrRemoveFromSavedList(WordPair item) {
    final _$actionInfo = _$_Saved_dataActionController.startAction();
    try {
      return super.addToOrRemoveFromSavedList(item);
    } finally {
      _$_Saved_dataActionController.endAction(_$actionInfo);
    }
  }
}
