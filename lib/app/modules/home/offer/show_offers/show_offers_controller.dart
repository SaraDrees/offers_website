import 'package:flutter/material.dart';
import 'package:offers_website/app/modules/home/shared/home_repository.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class ShowOffersController extends GetxStateController {
  HomeRepository homeRepository;
  ShowOffersController({required this.homeRepository});

  String? selectedMainCategory;
  String? selectedSubCategory;

  final ScrollController horizontalScrollController = ScrollController();
  final ScrollController verticalScrollController = ScrollController();
}
