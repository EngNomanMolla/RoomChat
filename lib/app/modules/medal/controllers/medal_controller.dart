import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedalController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final List<String> achievements = [
    'Fighter Star-1',
    'Multi Millionaire',
    'Charm Star',
    'Medal 4',
    'Medal 5',
    'Medal 6',
  ];

  final List<String> gifts = [
    'Gift 1',
    'Gift 2',
    'Gift 3',
    'Gift 4',
    'Gift 5',
  ];

  final List<String> activities = [
    'Activity 1',
    'Activity 2',
    'Activity 3',
    'Activity 4',
  ];

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
