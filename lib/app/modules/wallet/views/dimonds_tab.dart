import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/wallet_controller.dart';

class DiamondsTab extends StatelessWidget {
  final WalletController controller = Get.find<WalletController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => AspectRatio(
          aspectRatio: 2.5,
          child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Diamonds',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '${controller.diamonds}',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ],
                ),
              ),
        )),
        // Exchange diamonds to coins
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exchange diamonds to coins',
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ],
    );
  }
}
