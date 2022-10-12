import 'package:flutter/material.dart';

import '../common/CommonButton.dart';

class ConfirmDataScreen extends StatefulWidget {
  const ConfirmDataScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmDataScreen> createState() => _ConfirmDataScreenState();
}

class _ConfirmDataScreenState extends State<ConfirmDataScreen> {
  double slidervalue = 0;
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
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Internet Data',
                      style: TextStyle(
                          color: Color(0xff011A51),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.03),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/profile2.png',
                        height: height * 0.055,
                        width: height * 0.055,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'Lory Bryson',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.15),
                          child: SizedBox(
                            height: height * 0.05,
                            width: width * 0.04,
                            child: CommonButton(
                              text: "Buy Package",
                              onTap: () {},
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 0.01),
                              color: Color(0xffFB847C),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(height * 0.01),
                              ),
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
                  SizedBox(
                    height: height * 0.01,
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
                    height: height * 0.01,
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
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Choose Package',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: height * 0.022,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                'Confirm Internet Data',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.021,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(height * 0.02),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Package',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.020),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Freedom Internet 30 Day',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(height * 0.02),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lory Bryson',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.020),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '+62 852-432-450-00',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.02),
                        ),
                        Image.asset('assets/images/Profile3.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(height * 0.02),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.020),
                        ),
                        Text(
                          '\$ 10',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: height * 0.021),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.021),
                        ),
                        Text(
                          'Free',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.021),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                height: height * 0.07,
                width: width * 0.5,
                child: CommonButton(
                  color: Color(0xffFB847C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(height * 0.01),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.02),
                  text: 'BUY',
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
