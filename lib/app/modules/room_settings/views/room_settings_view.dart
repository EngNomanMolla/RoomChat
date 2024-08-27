import 'package:flutter/material.dart';

class RoomSettingsView extends StatefulWidget {
  const RoomSettingsView();

  @override
  _RoomSettingsViewState createState() => _RoomSettingsViewState();
}

class _RoomSettingsViewState extends State<RoomSettingsView> {
  String roomName = 'tempo';
  String announcement = 'Welcome to my r...';
  bool isSuperMicOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          _buildSettingsItem(context, 'Profile', ''),
          _buildSettingsItem(context, 'Room Name', roomName, _editRoomName),
          _buildSettingsItem(
              context, 'Announcement', announcement, _editAnnouncement),
          _buildSettingsItem(context, 'Number of Mic', '9 people'),
          _buildSettingsItem(context, 'Room Password', ''),
          _buildSwitchItem(context, 'Super Mic', isSuperMicOn, (newValue) {
            setState(() {
              isSuperMicOn = newValue;
            });
          }),
          _buildSettingsItem(context, 'Room Theme', ''),
          _buildSettingsItem(context, 'Administrators', ''),
          _buildSettingsItem(context, 'Blocked List', '0'),
          _buildSettingsItem(context, 'Kick History', ''),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(BuildContext context, String title, String value,
      [VoidCallback? onTap]) {
    return ListTile(
      title: Text(title),
      trailing: Text(value, style: TextStyle(color: Colors.grey)),
      onTap: onTap,
    );
  }

  Widget _buildSwitchItem(BuildContext context, String title, bool value,
      ValueChanged<bool> onChanged) {
    return ListTile(
      title: Text(title),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  Future<void> _editRoomName() async {
    String? newName = await _showEditDialog('Room Name', roomName);
    if (newName != null) {
      setState(() {
        roomName = newName;
      });
    }
  }

  Future<void> _editAnnouncement() async {
    String? newAnnouncement =
        await _showEditDialog('Announcement', announcement);
    if (newAnnouncement != null) {
      setState(() {
        announcement = newAnnouncement;
      });
    }
  }

  Future<String?> _showEditDialog(String title, String currentValue) {
    TextEditingController controller =
        TextEditingController(text: currentValue);
    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $title'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Enter $title'),
          ),
          actions: [
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
                Navigator.of(context).pop(controller.text);
              },
            ),
          ],
        );
      },
    );
  }
}
