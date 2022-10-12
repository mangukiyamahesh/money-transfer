import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selected = 0;

  List image = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
  ];
  List text = [
    'Transfer',
    'Withdraw',
    'Top up',
    'Deposit',
  ];

  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/electric.png', 'name': 'Electric'},
    {'image': 'assets/images/merchant.png', 'name': 'Merchant'},
    {'image': 'assets/images/internet.png', 'name': 'Internet'},
    {'image': 'assets/images/Ticket.png', 'name': 'Ticket'},
    {'image': 'assets/images/mobile.png', 'name': 'Mobile'},
    {'image': 'assets/images/transfer.png', 'name': 'Transfer'},
    {'image': 'assets/images/more.png', 'name': 'More'},
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/elect.png',
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 150,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Container(
                    height: height * 0.3,
                    width: height * 0.09,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: height * 0.02,
                          spreadRadius: height * 0.001,
                          offset: Offset(0, 2),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.04),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.025),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: height * 0.022),
                              ),
                              Text(
                                'Active',
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontSize: height * 0.022),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            '\$7800.50',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: height * 0.032),
                          ),
                          SizedBox(height: height * 0.02),
                          Row(
                            children: List.generate(
                              4,
                              (index) => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = index;
                                      });
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: width * 0.052),
                                      height: height * 0.07,
                                      width: height * 0.07,
                                      decoration: BoxDecoration(
                                        color: selected == index
                                            ? Colors.white
                                            : Color(0xffEFF2F4),
                                        borderRadius: BorderRadius.circular(
                                            height * 0.01),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          image[index],
                                          height: height * 0.035,
                                          width: height * 0.035,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.015),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.05),
                                    child: Text(
                                      text[index],
                                      style:
                                          TextStyle(fontSize: height * 0.018),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.19,
          ),
          Center(
            child: Text(
              'All Service',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: height * 0.025),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Wrap(
              spacing: 2,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/electric.png',
                            height: height * 0.065,
                            width: height * 0.065,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            'Electric',
                            style: TextStyle(
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/merchant.png',
                          height: height * 0.065,
                          width: height * 0.065,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'Merchant',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/internet.png',
                          height: height * 0.065,
                          width: height * 0.065,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'Internet',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Ticket.png',
                          height: height * 0.065,
                          width: height * 0.065,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'Ticket',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/mobile.png',
                          height: height * 0.065,
                          width: height * 0.065,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'Mobile',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.195,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/transfer.png',
                          height: height * 0.065,
                          width: height * 0.065,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'Transfer',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/more.png',
                          height: height * 0.065,
                          width: height * 0.065,
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
