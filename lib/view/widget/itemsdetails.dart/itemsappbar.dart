import 'package:flutter/material.dart';

class ItemsAppBar extends StatelessWidget {
  final String title;
  final void Function() onPressedOne;
  final void Function() onPressedTwo;

  const ItemsAppBar({
    super.key,
    required this.title,
    required this.onPressedOne,
    required this.onPressedTwo,
  });

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: IconButton(
          onPressed: onPressedOne,
          icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black, size: 25),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: IconButton(
            onPressed: onPressedTwo,
            icon: Icon(Icons.favorite_border, color: Colors.black, size: 25),
          ),
        ),
      ],
    );
  }
}
