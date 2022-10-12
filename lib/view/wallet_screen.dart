import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selected = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List name = ['Bank accounts', 'Cards'];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: height * 0.14,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Wallet',
                      style: TextStyle(
                          color: Color(0xff011A51),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.03),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Image.asset(
              'assets/images/atmcard.png',
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: height * 0.08,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffFF897E),
                              Color(0xff347BDE),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(height * 0.025),
                      ),
                      child: Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Colors.white,
                              size: height * 0.05,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Income',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.018,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.001,
                              ),
                              Text(
                                '\$ 5.455.21',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.02,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.08,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(height * 0.025),
                      ),
                      child: Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 9,
                            child: Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Colors.white,
                              size: height * 0.05,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Expenses',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.018,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.001,
                              ),
                              Text(
                                '\$ 8.002.55',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.02,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height * 0.175,
                  width: height * 0.23,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff20B4F2),
                        Color(0xff011A51),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(height * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          'Digital Wallet',
                          style: TextStyle(
                              fontSize: height * 0.02, color: Colors.white),
                        ),
                        SizedBox(
                          height: height * 0.002,
                        ),
                        Text(
                          'Balanced',
                          style: TextStyle(
                              fontSize: height * 0.02, color: Colors.white),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$ ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.022,
                                  color: Colors.white),
                            ),
                            Text(
                              '16.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.026,
                                  color: Colors.white),
                            ),
                            Text(
                              '543.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.022,
                                  color: Colors.white),
                            ),
                            Text(
                              '32',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.019,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Withdraw now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: height * 0.021,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              'Analytics',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: height * 0.025,
                color: Color(0xff011A51),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.06,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(height * 0.04),
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
                  2,
                  (index) => Container(
                    height: height * 0.05,
                    width: width * 0.44,
                    decoration: BoxDecoration(
                      color: selected == index
                          ? Color(0xffFF897E)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(height * 0.04),
                    ),
                    child: Center(
                      child: Text(
                        name[index],
                        style: TextStyle(
                            color: selected == index
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              height: height * 0.075,
              minWidth: width * 0.9,
              color: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(height * 0.01),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    'Scan Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height * 0.025,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
