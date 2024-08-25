import 'package:chat_room/app/controllers/my_item_screen_controller.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyItemScreen extends StatefulWidget {
  MyItemScreen({super.key});

  @override
  State<MyItemScreen> createState() => _MyItemScreenState();
}

class _MyItemScreenState extends State<MyItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('My Items'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed(RouteNames.store),
            child: Row(
              children: [
                Icon(Icons.store_outlined),
                SizedBox(width: 5),
                Text('Store'),
                SizedBox(width: 5),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: Get.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List<Widget>.generate(6, (int index) {
                return ChoiceChip(
                  label: Text(myItemOptions[index]),
                  selected: myItemSelectedChipIndex == index,
                  selectedColor: Colors.grey,
                  showCheckmark: false,
                  onSelected: (bool selected) {
                    if (selected) {
                      myItemSelectedChipIndex = index;
                      setState(() {});
                    }
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            color: Colors.grey,
            width: Get.width - Get.width * 0.25,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
              ),
              itemCount: myItemSelectedChipIndex == 0
                  ? frames.length
                  : myItemSelectedChipIndex == 1
                      ? vehicles.length
                      : myItemSelectedChipIndex == 2
                          ? customId.length
                          : myItemSelectedChipIndex == 3
                              ? roomCard.length
                              : myItemSelectedChipIndex == 4
                                  ? roomChatBubbles.length
                                  : micWave.length,
              itemBuilder: (context, index) {
                return StoreItemWidget(
                    item: myItemSelectedChipIndex == 0
                        ? frames[index]
                        : myItemSelectedChipIndex == 1
                            ? vehicles[index]
                            : myItemSelectedChipIndex == 2
                                ? customId[index]
                                : myItemSelectedChipIndex == 3
                                    ? roomCard[index]
                                    : myItemSelectedChipIndex == 4
                                        ? roomChatBubbles[index]
                                        : micWave[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String image;
  final int price;

  Item(this.title, this.image, this.price);
}

class StoreItemWidget extends StatelessWidget {
  final Item item;

  StoreItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(),
          // Image.asset(item.image, height: 80.0),
          Text(item.title, style: TextStyle(fontSize: 16.0)),
          Text('Coins: ${item.price}'),
          ElevatedButton(
            onPressed: () {
              // Add functionality here
            },
            child: Text('Preview'),
          ),
        ],
      ),
    );
  }
}
