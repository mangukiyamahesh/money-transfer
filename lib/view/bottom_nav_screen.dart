import 'package:fashion_hub/view/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List BottomNavlist = [
    HomePage(),
    Center(child: Text('Statistic')),
    Center(child: Text('Wallet')),
    Center(child: Text('Profile')),
  ];

  int pageselected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BottomNavlist[pageselected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageselected,
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: Color(0xffFF897E),
        // unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            pageselected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              height: height * 0.03,
              width: height * 0.03,
              color: pageselected == 0 ? Color(0xffFF897E) : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img2.png',
              height: height * 0.03,
              width: height * 0.03,
              color: pageselected == 1 ? Color(0xffFF897E) : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img3.png',
              height: height * 0.03,
              width: height * 0.03,
              color: pageselected == 2 ? Color(0xffFF897E) : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img4.png',
              height: height * 0.03,
              width: height * 0.03,
              color: pageselected == 3 ? Color(0xffFF897E) : Colors.grey,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
