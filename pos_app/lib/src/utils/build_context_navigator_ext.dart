import 'package:flutter/material.dart';

extension BuildContextNavigatorExt on BuildContext {
  Future<T?> push<T>(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));

  void pop() => Navigator.of(this).pop();

  bool get canPop => Navigator.of(this).canPop();
}
