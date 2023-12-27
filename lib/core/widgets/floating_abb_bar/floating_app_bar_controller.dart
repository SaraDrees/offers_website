import 'package:offers_website/core/services/state_mixin.dart';

class FloatingAppBarController extends GetxStateController {
  final List floatingBarisHovering = [false, false, false, false];
  hoverEffectInfloatingBar(index, value, String widgetId) {
    floatingBarisHovering[index] = value;
    update([widgetId]);
  }

  int screenIndex = 0;
  void changeScreen(int index) {
    screenIndex = index;
    update(["currentScreenId"]);
  }
}
