import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_network_layer/presentation/list_page/view/character_page.dart';

import 'data/repoImp/country_repository_impl.dart';
import 'domain/usecase/get_all_characters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: RepositoryProvider.value(
          value: GetAllCountries(repository: CountryRepositoryImpl()),
          child: const CharacterPage(),
        ));
  }
}
