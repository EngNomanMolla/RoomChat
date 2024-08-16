import 'package:chat_room/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:chat_room/app/modules/wallet/views/coins_tab.dart';
import 'package:chat_room/app/modules/wallet/views/dimonds_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletView extends GetView<WalletController> {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        bottom: TabBar(
          controller: controller.tabController,
          tabs: [Tab(text: 'Coins'), Tab(text: 'Diamonds')],
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [CoinsTab(), DiamondsTab()],
      ),
    );
    ;
  }
}
