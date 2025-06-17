import 'package:flutter/material.dart';

class ActionsAppAbar extends StatelessWidget {
  const ActionsAppAbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.favorite_border, color: Colors.black, size: 25),
      ),
    );
  }
}
