import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final void Function()? onPressedSearch;
  final void Function()? onPressedIconFavorite;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onPressedSearch,
    required this.onPressedIconFavorite,
    required this.onChanged,
    required this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: mycontroller,
              onChanged: onChanged,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: onPressedSearch,
                  icon: const Icon(Icons.search, size: 30),
                  color: Colors.white,
                ),
                hintText: title,
                hintStyle: const TextStyle(fontSize: 22, color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey.shade800,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.primaryColor,
            ),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressedIconFavorite,
              icon: const Icon(Icons.tune_outlined, size: 30),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
