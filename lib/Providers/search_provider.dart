import 'package:flutter/cupertino.dart';

class SearchProvider with ChangeNotifier {
  final List<TextDecoration> _textButtonDecorations =
      List.filled(4, TextDecoration.none);

  List<TextDecoration> get textButtonDecorations => _textButtonDecorations;

  setDecorationUnderline(int index) {
    _textButtonDecorations[index] = TextDecoration.underline;
    notifyListeners();
  }

  setDecorationNone(int index) {
    _textButtonDecorations[index] = TextDecoration.none;
    notifyListeners();
  }
}
