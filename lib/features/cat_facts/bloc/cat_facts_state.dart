import 'package:equatable/equatable.dart';

import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

abstract class CatFactsState extends Equatable {
  const CatFactsState();

  @override
  List<Object?> get props => [];
}

class CatFactsInitial extends CatFactsState {}

class CatFactsFailure extends CatFactsState {}

class CatFactsSuccess extends CatFactsState {
  final CatFact catFact;

  const CatFactsSuccess(this.catFact);

  @override
  List<Object?> get props => [catFact];

  @override
  String toString() => 'CatFactsSuccess { CatFacts: $catFact}';
}
