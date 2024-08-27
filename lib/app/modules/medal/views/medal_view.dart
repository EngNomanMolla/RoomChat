import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/medal_controller.dart';

class MedalView extends GetView<MedalController> {
  const MedalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medal')),
      body: Column(
        children: [
          // Top section
          _buildTopSection(),

          // Tabs for Achievements, Gifts, and Activities
          TabBar(
            controller: controller.tabController,
            labelColor: Colors.blueAccent,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blueAccent,
            tabs: [
              Tab(text: 'Achievement'),
              Tab(text: 'Gift'),
              Tab(text: 'Activity'),
            ],
          ),

          // Tab content
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                _buildTabContent(controller.achievements),
                _buildTabContent(controller.gifts),
                _buildTabContent(controller.activities),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Current Medal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.blueAccent.withOpacity(0.2),
                child: Icon(Icons.add, color: Colors.blueAccent),
              );
            },
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Obtained Medal(s): 0',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  // Navigate to the check medals page
                },
                child: Text('Check',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 16)),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTabContent(List<String> items) {
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
