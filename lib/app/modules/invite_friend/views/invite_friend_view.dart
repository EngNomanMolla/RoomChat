import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/invite_friend_controller.dart';

class InviteFriendView extends GetView<InviteFriendController> {
  const InviteFriendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Invite Friends to Get Coins')),
      body: _buildRewardsSection(),
    );
  }

  Widget _buildRewardsSection() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          leading: Icon(Icons.person_add, color: Colors.orange),
          title: Text('Invite 1 friend'),
          subtitle: Text('Get 5000 coins for each invite'),
          onTap: () {
            // Action on tap
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.account_balance_wallet, color: Colors.green),
          title: Text("Friend's first recharge"),
          subtitle: Text('Earn 5000 coins on first recharge'),
          onTap: () {
            // Action on tap
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.card_giftcard, color: Colors.red),
          title: Text('Friends send gifts'),
          subtitle: Text('Get 5% commission on each gift sent'),
          onTap: () {
            // Action on tap
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.monetization_on, color: Colors.blue),
          title: Text('Withdraw coins'),
          subtitle: Text('Withdraw your earned coins to wallet'),
          onTap: () {
            // Action on tap
          },
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Invite more friends action
            },
            child: Text('Invite More Friends'),
          ),
        ),
      ],
    );
  }
}
