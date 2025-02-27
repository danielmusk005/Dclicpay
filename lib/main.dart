
import 'package:flutter/material.dart';
import 'homepage.dart';
void main() {
  runApp(DclicPay());
}

class DclicPay extends StatefulWidget {
  const DclicPay({super.key});

  @override
  State<DclicPay> createState() => _DclicPayState();
}

class _DclicPayState extends State<DclicPay> {
  final List<Widget> pages = [
    homepage(),
    transaction(),
    moneypage(),

  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed, 
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Rewards",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
  
  static homepage() {}
}

moneypage() {
}

transaction() {
}