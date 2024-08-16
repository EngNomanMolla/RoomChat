import 'package:flutter/material.dart';

class RechargeOptionTile extends StatelessWidget {
  const RechargeOptionTile({this.coin, this.point, this.price, Key? key})
      : super(key: key);

  final String? coin, point, price;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              coin ?? '',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              point ?? '',
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(price ?? ''),
          ],
        ),
      ),
    );
  }
}
