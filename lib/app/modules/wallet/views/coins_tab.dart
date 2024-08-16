import 'package:chat_room/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:chat_room/app/modules/wallet/widget/recharge_option_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinsTab extends StatelessWidget {
  final WalletController controller = Get.find<WalletController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Coins balance
        Obx(() => AspectRatio(
              aspectRatio: 2.5,
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Coins',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '${controller.coins}',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ],
                ),
              ),
            )),
        // Recharge options
        Obx(
          () => Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: controller.rechargeOptions
                  .map(
                    (option) => RechargeOptionTile(
                      coin: option['coin']!,
                      point: option['point']!,
                      price: option['price']!,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        // Recharge now button
        Container(
          padding: EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              // Handle recharge button press
            },
            child: Text('Recharge Now'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 48),
            ),
          ),
        ),
      ],
    );
  }
}
