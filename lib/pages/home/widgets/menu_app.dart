import 'package:flutter/material.dart';
import 'package:xbank/pages/home/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          color: Colors.deepPurpleAccent,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: [
              Image.network(
                'https://wikiimg.tojsiabtv.com/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png',
                height: 120,
                width: 120,
                color: Colors.white,
              ),
              const Text.rich(
                TextSpan(
                  text: 'Banco ',
                  children: [
                    TextSpan(
                      text: '260 - Nu Pagamentos S.A',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              const Text.rich(
                TextSpan(
                  text: 'Agência ',
                  children: [
                    TextSpan(
                      text: '0001',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              const Text.rich(
                TextSpan(
                  text: 'Conta ',
                  children: [
                    TextSpan(
                      text: '00000-0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                child: Column(
                  children: const [
                    ItemMenu(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
