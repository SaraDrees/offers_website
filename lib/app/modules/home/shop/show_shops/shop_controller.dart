import 'package:flutter/material.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class ShopsController extends GetxStateController {
  String? category;

  String? district;

  String? date;

  bool usersWhoShowedOurShops = false;
  bool isFavorite = true;

  final ScrollController horizontalScrollController = ScrollController();
  final ScrollController verticalScrollController = ScrollController();
}
