import 'package:chat_room/app/controllers/store_screen_controller.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatefulWidget {

  StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Store'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed(RouteNames.myItems),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 5),
                Text('Mine'),
                SizedBox(width: 5),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: Get.width*0.25,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List<Widget>.generate(2, (int index) {
                return ChoiceChip(
                  label: Text(storeOptions[index]),
                  selected: selectedChipIndex == index,
                  selectedColor: Colors.grey,
                  showCheckmark: false,
                  onSelected: (bool selected) {
                    if (selected) {
                      selectedChipIndex = index;
                      setState(() {});
                    }
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            color: Colors.grey,
            width: Get.width-Get.width*0.25,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 6,
              ),
              itemCount:selectedChipIndex == 0? frames.length : vehicles.length,
              itemBuilder: (context, index) {
                return StoreItemWidget(item: selectedChipIndex == 0? frames[index] : vehicles[index]);
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
