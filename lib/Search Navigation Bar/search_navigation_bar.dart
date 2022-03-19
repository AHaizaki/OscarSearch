import 'package:flutter/material.dart';
import 'package:oscar_search/Search%20Navigation%20Bar/left_menu.dart';
import 'package:oscar_search/Search%20Navigation%20Bar/right_menu.dart';

AppBar appBarSearch(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: leftMenu(context),
    leadingWidth: 200,
    actions: [rightMenu(context)],
  );
}
