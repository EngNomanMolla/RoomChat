import 'package:chat_room/app/modules/level/controllers/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/level_controller.dart';

class LevelView extends GetView<LevelController> {
  const LevelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Level')),
      body: Column(
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProfileCard(
                username: "ttt",
                currentLevel: controller.currentLevel.value,
                currentXP: controller.currentXP.value,
                nextLevelXP: controller.nextLevelXP.value,
              ),
            ),
          ),
          Expanded(
              child: _buildGridContent([
            'items 1',
            'items 1',
            'items 1',
            'items 1',
          ]))
        ],
      ),
    );
  }

  Widget _buildGridContent(List<String> items) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 50), // Using Flutter Logo instead of an asset
            SizedBox(height: 10),
            Text(items[index], style: TextStyle(color: Colors.black)),
          ],
        );
      },
    );
  }
}
