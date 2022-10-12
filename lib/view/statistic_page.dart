import 'package:flutter/material.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selected = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  List list = ['Day', 'Week', 'Month', 'Year'];

  List<Map<String, dynamic>> card = [
    {
      'image': 'assets/images/20.png',
      'name': 'Shopping',
      'price': '\$250.00',
      'image2': 'assets/images/21.png'
    },
    {
      'image': 'assets/images/22.png',
      'name': 'Grocery',
      'price': '\$300.00',
      'image2': 'assets/images/21.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Text(
              'Current Balance',
              style: TextStyle(
                fontSize: height * 0.02,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$7800.50',
                  style: TextStyle(
                    fontSize: height * 0.035,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  size: height * 0.02,
                  color: Color(0xffFB9089),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  '5,25%',
                  style: TextStyle(
                    color: Color(0xffFB9089),
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Container(
              child: TabBar(
                onTap: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                controller: tabController,
                indicatorColor: Colors.transparent,
                tabs: List.generate(
                  4,
                  (index) => Container(
                    height: height * 0.04,
                    width: height * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.02),
                    ),
                    child: Center(
                      child: Text(
                        list[index],
                        style: TextStyle(
                          color: selected == index ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Image.asset(
            'assets/images/staticstics.png',
          ),
          SizedBox(
            height: height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Row(
              children: [
                Container(
                  height: height * 0.1,
                  width: width * 0.38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.02),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/18.png',
                          height: height * 0.05,
                          width: height * 0.05,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Income',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '\$3460',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.12,
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.02),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/19.png',
                          height: height * 0.05,
                          width: height * 0.05,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Outcome',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '\$2500',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Spendings',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.024,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          SizedBox(
            height: height * 0.15,
            child: ListView.builder(
              itemCount: 2,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: height * 0.15,
                  width: width * 0.5,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.02),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.03),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: height * 0.025,
                                  child: Center(
                                    child: Image.asset(
                                      card[index]['image'],
                                      height: height * 0.03,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                Text(
                                  card[index]['name'],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.12),
                              child: Row(
                                children: [
                                  Text(
                                    card[index]['price'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.02,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: width * 0.04,
                                  ),
                                  Image.asset(
                                    card[index]['image2'],
                                    height: height * 0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
