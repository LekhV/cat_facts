import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:fact_cats/database/domain/hive_repository.dart';

import 'viewed_facts_event.dart';
import 'viewed_facts_state.dart';

class ViewedFactsBloc extends Bloc<ViewedFactsEvent, ViewedFactsState> {
  final _factsRepository = GetIt.instance.get<HiveRepository>();

  ViewedFactsBloc() : super(ViewedFactsInitial()) {
    on<ViewedFactsFetched>((event, emit) async {
      try {
        final facts = await _factsRepository.getFactsCollection();
        emit(ViewedFactsSuccess(facts));
      } catch (_) {
        emit(ViewedFactsFailure());
      }
    });

    on<AddViewedFacts>((event, emit) async {
      try {
        await _factsRepository.updateFactsCollection(event.fact);
      } catch (_) {
        emit(ViewedFactsFailure());
      }
    });
  }
}
