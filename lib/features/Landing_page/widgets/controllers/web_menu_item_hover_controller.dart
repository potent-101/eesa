import 'package:flutter_riverpod/flutter_riverpod.dart';

class WebMenuItemHoverController extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }

  void setState(bool value) {
    state = value;
  }
}
