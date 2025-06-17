import 'package:flutter/material.dart';

class ContantTopOrderScren extends StatelessWidget {
  const ContantTopOrderScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Delivery Address",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 10),
        const Text(
          "Jl. Kpg Sutoyo",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),

        const Text(
          "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
          style: TextStyle(fontSize: 17, color: Colors.grey),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            OutlinedButton.icon(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey.shade100),
              ),
              onPressed: () {},
              icon: const Icon(Icons.edit, size: 16),
              label: const Text("Edit Address", style: TextStyle(fontSize: 15)),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey.shade100),
              ),
              onPressed: () {},
              icon: const Icon(Icons.note_add, size: 16),
              label: const Text("Add Note", style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ],
    );
  }
}
