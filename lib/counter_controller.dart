import 'package:flutter/material.dart';

import 'counter_model.dart';

class CounterController with ChangeNotifier {
  CounterController._();
  static final _controller = CounterController._();
  factory CounterController() {
    return _controller;
  }
  void BienGiam() {
    CouterModal().counter = CouterModal().counter - 1;
    print('giam');
    notifyListeners();
  }

  void BienTang() {
    CouterModal().counter = CouterModal().counter + 1;
    print('tang');
    notifyListeners();
  }

  void CheckLike() {
    CouterModal().checkLike = !CouterModal().checkLike;
    notifyListeners();
  }
}
