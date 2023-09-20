import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers.dart';

final buttonHoverStateProvider = StateProvider<bool>((ref) {
  return false;
});

final chainButtonListControllerProvider =
    NotifierProvider<ChainButtonListController, int>(
        ChainButtonListController.new);
