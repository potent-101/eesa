import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/accordion_controller.dart';

final accordionControllerProvider =
    NotifierProvider<AccordionController, int>(AccordionController.new);
