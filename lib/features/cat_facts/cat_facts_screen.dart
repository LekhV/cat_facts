import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fact_cats/features/viewed_facts/bloc/viewed_facts_bloc.dart';
import 'package:fact_cats/features/viewed_facts/bloc/viewed_facts_event.dart';
import 'package:fact_cats/features/viewed_facts/viewed_facts_screen.dart';
import 'package:fact_cats/ui_kit/custom_error_widget.dart';
import 'package:fact_cats/ui_kit/custom_indicator_widget.dart';

import 'bloc/cat_facts_bloc.dart';
import 'bloc/cat_facts_event.dart';
import 'bloc/cat_facts_state.dart';
import 'widgets/fact_buttons_widget.dart';
import 'widgets/fact_widget.dart';

// --Text--
const _kFactAbout = 'Facts about cats';

class CatFactsScreen extends StatefulWidget {
  const CatFactsScreen({Key? key}) : super(key: key);

  @override
  State<CatFactsScreen> createState() => _CatFactsScreenState();
}

class _CatFactsScreenState extends State<CatFactsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CatFactsBloc, CatFactsState>(
      listener: (context, state) {
        if (state is CatFactsSuccess) {
          context
              .read<ViewedFactsBloc>()
              .add(AddViewedFacts(fact: state.catFact));
        }
      },
      builder: (context, state) {
        Widget body = const SizedBox();
        if (state is CatFactsInitial) {
          body = const CustomIndicatorWidget();
        }
        if (state is CatFactsFailure) {
          body = const CustomErrorWidget();
        }
        if (state is CatFactsSuccess) {
          body = _buildContent(state);
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              _kFactAbout,
            ),
            actions: [
              if (state is CatFactsFailure) ...{
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: _onTapChangedFact,
                )
              }
            ],
          ),
          body: SafeArea(
            child: body,
          ),
        );
      },
    );
  }

  Widget _buildContent(CatFactsSuccess state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FactWidget(catFact: state.catFact),
          FactButtonsWidget(
            onTapAnother: _onTapChangedFact,
            onTapHistory: _onTapShowHistory,
          ),
        ],
      ),
    );
  }

  void _onTapChangedFact() {
    imageCache.clear();
    context.read<CatFactsBloc>().add(CatFactsFetched());
  }

  void _onTapShowHistory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<ViewedFactsBloc>(context),
          child: const ViewedFactsScreen(),
        ),
      ),
    );
  }
}
