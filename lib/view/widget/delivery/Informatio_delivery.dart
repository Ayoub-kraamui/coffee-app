import 'package:flutter/material.dart';

class InformatioDelivery extends StatelessWidget {
  const InformatioDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Container(height: 4, width: 60, color: Colors.grey[400])),

        SizedBox(height: 16),
        Text(
          "10 minutes left",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          "Delivery to Jl. Kpg Sutoyo",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(4, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 4,
                width: 60,
                color: index == 3 ? Colors.grey[400] : Colors.blue,
              );
            }),
          ],
        ),
      ],
    );
  }
}
