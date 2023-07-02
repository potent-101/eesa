import 'package:eesa/features/Landing_page/widgets/controllers/web_menu_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final webMenuControllerProvider =
    NotifierProvider<WebMenuController, int>(WebMenuController.new);
