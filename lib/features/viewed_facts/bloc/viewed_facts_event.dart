import 'package:equatable/equatable.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

abstract class ViewedFactsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddViewedFacts extends ViewedFactsEvent {
  final CatFact fact;

  AddViewedFacts({
    required this.fact,
  });

  @override
  List<Object> get props => [fact];
}

class ViewedFactsFetched extends ViewedFactsEvent {}
