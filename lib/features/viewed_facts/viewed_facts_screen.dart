import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fact_cats/ui_kit/custom_error_widget.dart';
import 'package:fact_cats/ui_kit/custom_indicator_widget.dart';
import 'package:fact_cats/ui_kit/custom_text_widget.dart';
import 'package:fact_cats/utils/date_utils.dart';

import 'bloc/viewed_facts_bloc.dart';
import 'bloc/viewed_facts_event.dart';
import 'bloc/viewed_facts_state.dart';

// --Text--
const _kViewedFacts = 'Viewed Facts';
const _kEmptyFacts = 'Empty';

class ViewedFactsScreen extends StatefulWidget {
  const ViewedFactsScreen({key}) : super(key: key);

  @override
  State<ViewedFactsScreen> createState() => _ViewedFactsScreenState();
}

class _ViewedFactsScreenState extends State<ViewedFactsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ViewedFactsBloc>().add(ViewedFactsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_kViewedFacts),
      ),
      body: BlocBuilder<ViewedFactsBloc, ViewedFactsState>(
        builder: (context, state) {
          if (state is ViewedFactsInitial) {
            return const CustomIndicatorWidget();
          }

          if (state is ViewedFactsFailure) {
            return const CustomErrorWidget();
          }
          if (state is ViewedFactsSuccess) {
            return _buildContent(state);
          }
          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildContent(ViewedFactsSuccess state) {
    if (state.facts.isEmpty) {
      return const Center(
        child: Text(
          _kEmptyFacts,
        ),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(8.0),
      itemCount: state.facts.length,
      itemBuilder: (_, i) => CustomTextWidget(
        title: convertDateToString(state.facts[i].dateTime),
        text: state.facts[i].fact,
      ),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
