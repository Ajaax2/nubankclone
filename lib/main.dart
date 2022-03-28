import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xbank/pages/home/home_page.dart';

void main() {
SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark,
));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Nubank Design",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}
