import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final List<Map<String, dynamic>> levels = [
    {'level': 'Lv.1', 'progress': 20, 'expNeeded': 160},
    {'level': 'Lv.10', 'progress': 100, 'expNeeded': 0},
    {'level': 'Lv.20', 'progress': 0, 'expNeeded': 300},
    {'level': 'Lv.30', 'progress': 50, 'expNeeded': 200},
    {'level': 'Lv.40', 'progress': 75, 'expNeeded': 100},
  ];

  final List<Map<String, dynamic>> medals = [
    {'level': 'Lv.10', 'stars': 1},
    {'level': 'Lv.20', 'stars': 2},
    {'level': 'Lv.30', 'stars': 3},
    {'level': 'Lv.40', 'stars': 4},
    {'level': 'Lv.50', 'stars': 5},
  ];

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  var currentLevel = 1.obs;
  var currentXP = 20.obs;
  var nextLevelXP = 160.obs;

  var levelBadges = <Map<String, dynamic>>[
    {"level": 1, "badge": "Lv.1 Badge"},
    {"level": 10, "badge": "Lv.10 Badge"},
  ].obs;

  void fetchLevelData() {
    // Fetch data from your API or local storage
  }

  String get progressText => "${currentXP.value} / ${nextLevelXP.value}";

  double get progressPercent => currentXP.value / nextLevelXP.value;
}
