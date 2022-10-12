import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Notification',
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Text(
              'Recent',
              style: TextStyle(
                  fontSize: height * 0.022, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/11.png',
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tansfer ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          'You have transferred an',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'amount \$876 to Jasson sterek',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0005,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/12.png',
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Top Up ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          'You have top up an',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'amount \$20 to shoppe pay',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Text(
              'Yesterday',
              style: TextStyle(
                  fontSize: height * 0.022, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0002,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset('assets/images/13.png',
                    height: height * 0.05, width: height * 0.05),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Shopping ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          'you shop for shoes',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'on Gemolis.com',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0002,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/14.png',
                  height: height * 0.06,
                  width: height * 0.05,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Voucher ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          'You pay the electric',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'voucher amount \$10 ',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0002,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset('assets/images/15.png',
                    height: height * 0.05, width: height * 0.05),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Grab Pay ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          ' You pay the Grab pay',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'amount \$15 ',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0002,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset('assets/images/16.png',
                    height: height * 0.05, width: height * 0.05),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Game Top up ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          'You pay the Game ',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'top up amount \$25 ',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0002,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              children: [
                Image.asset('assets/images/17.png',
                    height: height * 0.05, width: height * 0.05),
                SizedBox(
                  width: width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Add card ',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.016),
                        ),
                        Text(
                          'You have add card stela ',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.016),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Text(
                      'bank',
                      style: TextStyle(
                          color: Colors.grey, fontSize: height * 0.016),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(
            color: Colors.grey,
            thickness: height * 0.0002,
          ),
        ],
      ),
    );
  }
}
