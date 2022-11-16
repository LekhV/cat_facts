import 'package:equatable/equatable.dart';

abstract class CatFactsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CatFactsFetched extends CatFactsEvent {}
