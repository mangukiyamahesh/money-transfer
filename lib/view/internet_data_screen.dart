import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../common/CommonButton.dart';

class InternetDataScreen extends StatefulWidget {
  const InternetDataScreen({Key? key}) : super(key: key);

  @override
  State<InternetDataScreen> createState() => _InternetDataScreenState();
}

class _InternetDataScreenState extends State<InternetDataScreen> {
  double slidervalue = 0;

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
              Container(
                height: height * 0.3,
                width: double.infinity,
                color: Color(0XFF011A51),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: Text(
                      'Internet Data',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.1,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Container(
                    height: height * 0.25,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.01),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/profile2.png',
                                height: height * 0.055,
                                width: height * 0.055,
                              ),
                              SizedBox(
                                width: width * 0.2,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: width * 0.15),
                                  child: CommonButton(
                                    text: "Buy Package",
                                    onTap: () {},
                                    padding: EdgeInsets.symmetric(
                                        vertical: height * 0.01),
                                    color: Color(0xffFB847C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(height * 0.01),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Data',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.021,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.002,
                          ),
                          Text(
                            'Monthly',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.021,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '42 GB',
                                style: TextStyle(
                                  color: Color(0xff011A51),
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.021,
                                ),
                              ),
                              Text(
                                '12 GB',
                                style: TextStyle(
                                  color: Color(0xff011A51),
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.021,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            width: double.infinity,
                            height: height * 0.007,
                            decoration: BoxDecoration(
                              color: Color(0xff011A51),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Text(
                            'March 21 - April 21,2022',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.021,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Freedom internet.png',
                      height: height * 0.05,
                      width: height * 0.05,
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Freedom internet',
                          style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.002,
                        ),
                        Text(
                          '30 Day',
                          style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      '\$10',
                      style: TextStyle(
                        fontSize: height * 0.022,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: width * 0.8,
                  lineThickness: height * 0.0002,
                  dashLength: 4.0,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  'New 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day',
                  style: TextStyle(
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.018,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
