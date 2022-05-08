import 'package:offers_website/core/services/state_mixin.dart';

class AppBarController extends GetxStateController {
  final List isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  showOnHoverSelectEffect(index, value, String widgetId) {
    isHovering[index] = value;
    update([widgetId]);
  }
}
