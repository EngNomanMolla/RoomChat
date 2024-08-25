import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/chip_screen_controller.dart';

class CPScreen extends StatefulWidget {
  @override
  State<CPScreen> createState() => _CPScreenState();
}

class _CPScreenState extends State<CPScreen> {
  final ScrollController _scrollController = ScrollController();

  int _selectedChipIndex = 0;

  final double _scrollDistance = 50.0;

  // Keys to identify sections
  final GlobalKey _cpKey = GlobalKey();
  final GlobalKey _privilegesKey = GlobalKey();
  final GlobalKey _rulesKey = GlobalKey();

  // Function to scroll to a specific widget
  void _scrollToItem(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        child: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [Colors.purple, Colors.deepPurple],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              // ),
              ),
          child: SafeArea(
            child: Column(
              children: [
                // Top Section
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BackButton(),
                          SizedBox(width: Get.width / 2.7),
                          Text(
                            "CP",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 200),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List<Widget>.generate(3, (int index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ChoiceChip(
                              label: Text(options[index]),
                              selected: _selectedChipIndex == index,
                              selectedColor: Colors.blue,
                              showCheckmark: false,
                              onSelected: (bool selected) {
                                setState(() {
                                  if (selected) {
                                    _selectedChipIndex = index;
                                    if (index == 0) {
                                      _scrollToItem(_cpKey);
                                    }
                                    if (index == 1) {
                                      _scrollToItem(_privilegesKey);
                                    } else if (index == 2) {
                                      _scrollToItem(_rulesKey);
                                    }
                                  }
                                });
                              },
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 30,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('CP'),
                      ),
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.orange, width: 5),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 32,
                                      backgroundColor: Colors.grey[200],
                                      child: Text("D"),
                                    ),
                                    SizedBox(height: 10),
                                    Text('David'),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.favorite, color: Colors.pink),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 32,
                                      backgroundColor: Colors.grey[200],
                                      child: Icon(Icons.add),
                                    ),
                                    SizedBox(height: 10),
                                    Text('invite'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                            Text('dont have a cp'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  key: _privilegesKey,
                  // Assign key to Privileges section
                  height: 30,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Privileges'),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.orange, width: 5),
                  ),
                  child: Column(
                    children: [
                      LevelWidget(
                        level: "Lv. 1",
                        title: "Room Profile",
                        description:
                            "Make your messages special while chatting in the room.",
                      ),
                      LevelWidget(
                        level: "Lv. 2",
                        title: "Seat Effects",
                        description:
                            "Special seat effects when you sit together near your CP.",
                      ),
                      LevelWidget(
                        level: "Lv. 3",
                        title: "Room Chat Bubbles",
                        description:
                            "Make your messages special while chatting in the room.",
                      ),
                      LevelWidget(
                        level: "Lv. 4",
                        title: "Room Card Background",
                        description:
                            "Different profile background with more colors.",
                      ),
                      LevelWidget(
                        level: "Lv. 5",
                        title: "Misc Effects",
                        description:
                            "More attractive miscellaneous effects shown while chatting.",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  key: _rulesKey,
                  // Assign key to Rules section
                  height: 30,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Rules'),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.orange, width: 5),
                  ),
                  child: Column(
                    children: [
                      LevelWidget(
                        level: "Lv. 1",
                        title: "Room Profile",
                        description:
                            "Make your messages special while chatting in the room.",
                      ),
                      LevelWidget(
                        level: "Lv. 2",
                        title: "Seat Effects",
                        description:
                            "Special seat effects when you sit together near your CP.",
                      ),
                      LevelWidget(
                        level: "Lv. 3",
                        title: "Room Chat Bubbles",
                        description:
                            "Make your messages special while chatting in the room.",
                      ),
                      LevelWidget(
                        level: "Lv. 4",
                        title: "Room Card Background",
                        description:
                            "Different profile background with more colors.",
                      ),
                      LevelWidget(
                        level: "Lv. 5",
                        title: "Misc Effects",
                        description:
                            "More attractive miscellaneous effects shown while chatting.",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LevelWidget extends StatelessWidget {
  final String level;
  final String title;
  final String description;

  LevelWidget({
    required this.level,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            level,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
