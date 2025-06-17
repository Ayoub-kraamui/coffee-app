import 'package:flutter/material.dart';

class BackgroundTopHomeScreen extends StatelessWidget {
  const BackgroundTopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        children: [
          // الجزء العلوي الغامق
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, const Color.fromARGB(192, 0, 0, 0)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // الجزء السفلي الفاتح
          Expanded(flex: 5, child: Container(color: Colors.grey[100])),
        ],
      ),
    );
  }
}
