import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChainButtonController extends Notifier<bool> {
  @override
  bool build() {
    return true;
  }

  void toggle() {
    state = !state;
  }
}

class ChainButtonListController extends Notifier<int> {
  @override
  int build() {
    return 1;
  }

  int update(int index) {
    state = index;
    return state;
  }
}
