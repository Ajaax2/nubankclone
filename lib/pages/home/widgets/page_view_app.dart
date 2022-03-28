import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return Positioned(
      top: _screenHeigth * .24,
      left: 0,
      right: 0,
      child: SizedBox(
        height: _screenHeigth * 0.50,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          children: const [
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
