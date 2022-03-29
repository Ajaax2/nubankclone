import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  final bool showMenu;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp(
      {Key? key, required this.currentIndex, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;

    return Positioned(
      top: _screenHeight * 0.74,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: showMenu ? 0 : 1,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 12,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(color: getColor(0), shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              width: 12,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(color: getColor(1), shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              width: 12,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(color: getColor(2), shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
