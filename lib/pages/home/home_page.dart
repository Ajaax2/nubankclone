import 'package:flutter/material.dart';
import 'package:xbank/pages/home/widgets/my_app_bar.dart';
import 'package:xbank/pages/home/widgets/my_dots_app.dart';
import 'package:xbank/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = false;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            top: _screenHeight * 0.24,
          ),
         MyDotsApp(currentIndex: _currentIndex),
        ],
      ),
    );
  }
}
