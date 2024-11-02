//NOTE ==> Custom Theme Extension
import 'package:flutter/material.dart';

extension ThemeValues on BuildContext {
  ColorScheme get color => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}

//NOTE ==> Custom MediaQuery Extension
extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
