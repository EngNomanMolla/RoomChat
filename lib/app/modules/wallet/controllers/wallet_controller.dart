import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;

  var coins = 200.obs;
  var diamonds = 0.obs;

  var rechargeOptions = [
    {'coin': '10000', 'point': '+3000', 'price': '120 BDT'},
    {'coin': '50000', 'point': '+5000', 'price': '650 BDT'},
    {'coin': '250000', 'point': '+50000', 'price': '3200 BDT'},
    {'coin': '1000000', 'point': '+270000', 'price': '13000 BDT'},
    {'coin': '10000', 'point': '+3000', 'price': '120 BDT'},
    {'coin': '50000', 'point': '+5000', 'price': '650 BDT'},
    {'coin': '250000', 'point': '+50000', 'price': '3200 BDT'},
    {'coin': '1000000', 'point': '+270000', 'price': '13000 BDT'},
  ].obs;

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
}
