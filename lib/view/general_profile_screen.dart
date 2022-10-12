import 'package:flutter/material.dart';

class GeneralProfileScreen extends StatefulWidget {
  const GeneralProfileScreen({Key? key}) : super(key: key);

  @override
  State<GeneralProfileScreen> createState() => _GeneralProfileScreenState();
}

class _GeneralProfileScreenState extends State<GeneralProfileScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/33.png',
      'name': 'Security ',
      'text': 'Your Password Acount'
    },
    {
      'image': 'assets/images/34.png',
      'name': 'Help ',
      'text': 'Need More Help'
    },
    {
      'image': 'assets/images/35.png',
      'name': 'Privacy Policy ',
      'text': 'Your Password Acount'
    },
  ];
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
                    width: height * 0.15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Color(0xff011A51),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.028),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Image.asset(
                'assets/images/profile.png',
                height: height * 0.09,
                width: height * 0.09,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Text(
                'Rene Wells',
                style: TextStyle(
                    fontSize: height * 0.023, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Center(
              child: Text(
                'Roday43@gmail.com',
                style: TextStyle(
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Center(
              child: Container(
                height: height * 0.11,
                width: width * 0.75,
                decoration: BoxDecoration(
                  color: Color(0xffFF897E),
                  borderRadius: BorderRadius.circular(height * 0.01),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Income',
                          style: TextStyle(
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '\$3460',
                          style: TextStyle(
                            fontSize: height * 0.021,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      thickness: width * 0.003,
                      indent: height * 0.02,
                      endIndent: height * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Outcome',
                          style: TextStyle(
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '\$2500',
                          style: TextStyle(
                            fontSize: height * 0.021,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              'General',
              style: TextStyle(
                  fontSize: height * 0.024, fontWeight: FontWeight.w600),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Container(
                  height: height * 0.11,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: height * 0.035),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.02),
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      children: [
                        Image.asset(
                          list[index]['image'],
                          height: height * 0.05,
                          width: height * 0.05,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              list[index]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.02),
                            ),
                            SizedBox(
                              height: height * 0.004,
                            ),
                            Text(
                              list[index]['text'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.017,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: width * 0.06,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
