import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/23.png', 'name': 'Edwardo'},
    {'image': 'assets/images/24.png', 'name': 'Jasson'},
    {'image': 'assets/images/25.png', 'name': 'Kemod'},
    {'image': 'assets/images/26.png', 'name': 'Dasep'},
  ];

  List<Map<String, dynamic>> list1 = [
    {
      'image': 'assets/images/27.png',
      'name': 'Diani Otelanis Teori',
      'number': '+62898023450'
    },
    {
      'image': 'assets/images/28.png',
      'name': 'Bahrun ST',
      'number': '+62898023450'
    },
    {
      'image': 'assets/images/29.png',
      'name': 'Ririn Panjaitan spd',
      'number': '+62898023450'
    },
    {
      'image': 'assets/images/30.png',
      'name': 'Eki Sulungpati Mpd',
      'number': '+62898023450'
    },
    {
      'image': 'assets/images/31.png',
      'name': 'Septiani Destri seulo',
      'number': '+62898023450'
    },
    {
      'image': 'assets/images/32.png',
      'name': 'Nuni Eksitin',
      'number': '+62898023450'
    },
  ];
  int x = 0;
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
                    width: height * 0.11,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Contact List',
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
              height: height * 0.05,
            ),
            Text(
              'Recent Contact',
              style: TextStyle(
                  color: Color(0xff011A51),
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.022),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    Dance(
                      child: Bounce(
                        duration: Duration(seconds: 3),
                        child: Image.asset(
                          list[index]['image'],
                          height: height * 0.06,
                          width: height * 0.06,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      list[index]['name'],
                      style: TextStyle(
                          fontSize: height * 0.019,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              'All Contact',
              style: TextStyle(
                  color: Color(0xff011A51),
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.021),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: Row(
                    children: [
                      Image.asset(
                        list1[index]['image'],
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
                            list1[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: height * 0.018),
                          ),
                          SizedBox(
                            height: height * 0.004,
                          ),
                          Text(
                            list1[index]['number'],
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: height * 0.016),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
