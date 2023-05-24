import 'package:flutter/material.dart';

class BottomBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Widget botomItem(IconData bottomIcons) {
      return SizedBox(
        // color: Colors.yellow,
        width: size.width / 4,
        child: Icon(bottomIcons),
      );
    }

    return Container(
      height: size.height * 0.08,
      width: size.width,
      color: Colors.white,
      child: Row(
        children: [
          botomItem(Icons.search),
          botomItem(Icons.save),
          botomItem(Icons.shopping_bag),
          botomItem(Icons.person),
        ],
      ),
    );
  }
}
