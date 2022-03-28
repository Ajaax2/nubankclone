import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
final double top;
final ValueChanged<int> onChanged;

  const PageViewApp({Key? key, required this.top,
    required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.50,
        child: PageView(
          onPageChanged: onChanged,
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
