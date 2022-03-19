import 'package:flutter/material.dart';
import 'package:oscar_search/Search%20Navigation%20Bar/search_navigation_bar.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSearch(context),
    );
  }
}
