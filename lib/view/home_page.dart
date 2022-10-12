import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/paypal.png',
      'name': 'Paypall',
      'price': '+0.54915 BTC',
      'date': '24 Mar 2022'
    },
    {
      'image': 'assets/images/apple.png',
      'name': 'Apple',
      'price': '+0.75962 BTC',
      'date': '25 Mar 2022'
    },
    {
      'image': 'assets/images/mcdonald.png',
      'name': 'Mcdonalds',
      'price': '+0.65841 BTC',
      'date': '26 Mar 2022'
    },
    {
      'image': 'assets/images/amazon.png',
      'name': 'Amazon',
      'price': '+0.54915 BTC',
      'date': '28 Mar 2022'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.42,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/container.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      children: [
                        Container(
                          height: height * 0.06,
                          width: height * 0.06,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Image.asset("assets/images/profile.png"),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: height * 0.002,
                            ),
                            Text(
                              'Rene Wells',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.128,
                    ),
                    Text(
                      'Availbale Balance',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: height * 0.026,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    Text(
                      '\$17,000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.032,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.60,
              width: width * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(height * 0.03),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      'Operations',
                      style: TextStyle(
                          color: Color(0xff010101),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.022),
                    ),
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: height * 0.022),
                    ),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: Expanded(
                        child: ListView.builder(
                          itemCount: 4,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(top: height * 0.025),
                              child: Row(
                                children: [
                                  Image.asset(
                                    list[index]['image'],
                                    height: height * 0.075,
                                    width: height * 0.075,
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list[index]['name'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: height * 0.02),
                                      ),
                                      SizedBox(
                                        height: height * 0.005,
                                      ),
                                      Text(
                                        list[index]['price'],
                                        style: TextStyle(
                                          color: Color(0xff9CAEB8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    list[index]['date'],
                                    style: TextStyle(
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
