import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconMenu extends StatelessWidget {
  const IconMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 80,
          width: 90,
          child: const Icon(
            Icons.account_circle_sharp,
            color: Colors.deepPurpleAccent,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          height: 80,
          width: 90,
          child: const Icon(
            Icons.credit_card,
            color: Colors.deepPurpleAccent,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          height: 80,
          width: 90,
          child: const Icon(
            Icons.monetization_on_sharp,
            color: Colors.deepPurpleAccent,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ],
    );
  }
}
