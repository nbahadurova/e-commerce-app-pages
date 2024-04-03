import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{
  double get fh => MediaQuery.of(this).size.height;
  double get fw => MediaQuery.of(this).size.width;
}