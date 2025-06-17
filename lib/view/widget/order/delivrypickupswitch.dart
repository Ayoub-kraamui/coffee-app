import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';

class DelivryPickUpSwitch extends StatelessWidget {
  const DelivryPickUpSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Deliver", style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey[300],
              ),
              child: const Text("Pick Up", style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
