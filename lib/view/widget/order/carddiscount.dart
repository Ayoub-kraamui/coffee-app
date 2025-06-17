import 'package:flutter/material.dart';

class CardDiscountOrder extends StatelessWidget {
  const CardDiscountOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Icon(Icons.discount, color: Colors.orange),
          SizedBox(width: 8),
          Text(
            "1 Discount is Applies",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.chevron_right, size: 40, color: Colors.grey),
        ],
      ),
    );
  }
}
