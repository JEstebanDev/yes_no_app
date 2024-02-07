import 'package:flutter/material.dart';

const Color _customColor = Colors.deepPurpleAccent;
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.amber,
  Colors.lightGreenAccent,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Color must be between 0 and ${_colorThemes.length}");

  ThemeData theme() {
    return ThemeData(
        colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
