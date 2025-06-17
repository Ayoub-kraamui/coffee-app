import 'package:coffee/core/class/imageassets.dart';
import 'package:flutter/material.dart';

class InformationDriverDelivery extends StatelessWidget {
  const InformationDriverDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppImageAssets.personImage,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brooklyn Simmons",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Personal Courier",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Icon(Icons.phone_outlined, color: Colors.black, size: 40),
          ),
        ],
      ),
    );
  }
}
