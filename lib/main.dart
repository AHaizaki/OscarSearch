import 'package:flutter/material.dart';
import 'package:oscar_search/Pages/search.dart';
import 'package:provider/provider.dart';

import 'Providers/search_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => SearchProvider())],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white, centerTitle: true),
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
              button: TextStyle(fontSize: 14, color: Colors.black)),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
          ))),
      routes: {
        "/": (context) => const Search(),
      },
    ),
  ));
}
