import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'infrastructure/injectable.dart';

import 'features/viewed_facts/bloc/viewed_facts_bloc.dart';
import 'features/cat_facts/bloc/cat_facts_bloc.dart';
import 'features/cat_facts/bloc/cat_facts_event.dart';
import 'features/cat_facts/cat_facts_screen.dart';

Future<void> main() async {
  configureDependencies();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CatFactsBloc>(
            create: (BuildContext context) =>
                CatFactsBloc()..add(CatFactsFetched()),
          ),
          BlocProvider<ViewedFactsBloc>(
            create: (BuildContext context) => ViewedFactsBloc(),
          ),
        ],
        child: const CatFactsScreen(),
      ),
    );
  }
}
