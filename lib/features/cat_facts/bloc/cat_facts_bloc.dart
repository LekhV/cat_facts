import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:fact_cats/domain/cat_fact/cat_facts_repository.dart';

import 'cat_facts_event.dart';
import 'cat_facts_state.dart';

class CatFactsBloc extends Bloc<CatFactsEvent, CatFactsState> {
  final _catFactRepository = GetIt.instance.get<CatFactsRepository>();

  CatFactsBloc() : super(CatFactsInitial()) {
    on<CatFactsFetched>((event, emit) async {
      emit(CatFactsInitial());

      try {
        final catFact = await _catFactRepository.fetchCatFact();
        emit(CatFactsSuccess(catFact));
      } catch (_) {
        emit(CatFactsFailure());
      }
    });
  }
}
