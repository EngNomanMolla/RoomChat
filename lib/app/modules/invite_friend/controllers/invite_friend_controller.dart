import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InviteFriendController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  var numberOfInvitations = 0.obs;
  var totalCoinsRewarded = 0.obs;
  var coinsToWithdraw = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
