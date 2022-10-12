import 'package:fashion_hub/view/token_screen.dart';
import 'package:flutter/material.dart';

import 'bills_screen.dart';

class ElectricityTokenScreen extends StatefulWidget {
  const ElectricityTokenScreen({Key? key}) : super(key: key);

  @override
  State<ElectricityTokenScreen> createState() => _ElectricityTokenScreenState();
}

class _ElectricityTokenScreenState extends State<ElectricityTokenScreen>
    with SingleTickerProviderStateMixin {
  // bool select = true;
  // bool isfavourite = true;
  TabController? tabController;
  List items = [
    'Electicity Token',
    'Bills',
  ];
  int selected = 0;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Electric',
                      style: TextStyle(
                          color: Color(0xff011A51),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.027),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Container(
              height: height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(height * 0.02),
              ),
              child: TabBar(
                indicatorColor: Colors.transparent,
                controller: tabController,
                onTap: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                tabs: List.generate(
                  items.length,
                  (index) => Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.01),
                      color: selected == index
                          ? Colors.indigo
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                          color: selected == index ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                TokenScreen(),
                BillsScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
