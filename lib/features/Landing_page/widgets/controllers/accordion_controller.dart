import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccordionController extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  int update(int index) {
    state = index;
    return state;
  }
}
