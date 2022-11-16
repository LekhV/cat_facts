import 'package:equatable/equatable.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

abstract class ViewedFactsState extends Equatable {
  const ViewedFactsState();

  @override
  List<Object?> get props => [];
}

class ViewedFactsInitial extends ViewedFactsState {}

class ViewedFactsFailure extends ViewedFactsState {}

class ViewedFactsSuccess extends ViewedFactsState {
  final List<CatFact> facts;

  const ViewedFactsSuccess(this.facts);

  @override
  List<Object?> get props => [facts];

  @override
  String toString() => 'ViewedFactsSuccess { ViewedFacts: $facts}';
}
