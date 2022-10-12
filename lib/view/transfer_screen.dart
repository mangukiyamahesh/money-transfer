import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  int counter = 0;
  int select = 0;
  int pic = 0;
  List money = [100, 150, 200, 250];
  List<Map<String, dynamic>> list = [
    {'image': 'assets/images/p1.png', 'name': 'Amit'},
    {'image': 'assets/images/p2.png', 'name': 'Nency'},
    {'image': 'assets/images/p3.png', 'name': 'Tulsi'},
    {'image': 'assets/images/p4.png', 'name': 'Ansh'},
    {'image': 'assets/images/p5.png', 'name': 'Hardik'},
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
              child: Icon(
                Icons.arrow_back,
                size: height * 0.04,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: height * 0.025,
                  color: Color(0xff011A51),
                ),
                Text(
                  'Send Money',
                  style: TextStyle(
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff011A51),
                  ),
                ),
                Spacer(),
                Image.asset(
                  'assets/images/profile.png',
                  height: height * 0.06,
                  width: height * 0.06,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              'Choose Account',
              style: TextStyle(
                fontSize: height * 0.018,
                fontWeight: FontWeight.w500,
                color: Color(0xff777777),
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            ZoomIn(
              child: FadeInLeft(
                duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/card.png',
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Center(
              child: Text(
                'How much you would likw to send?',
                style: TextStyle(
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.03,
                  width: height * 0.032,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(height * 0.01),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (money[select] > 0) {
                          money[select]--;
                        }
                      });
                    },
                    child: Icon(
                      Icons.remove,
                      size: height * 0.025,
                    ),
                  ),
                ),
                SizedBox(
                  width: height * 0.1,
                ),
                Text(
                  '${money[select]}',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: height * 0.032),
                ),
                SizedBox(
                  width: height * 0.1,
                ),
                Container(
                  height: height * 0.03,
                  width: height * 0.032,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(height * 0.01),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        money[select]++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      size: height * 0.025,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      select = index;
                    });
                  },
                  child: Container(
                    height: height * 0.043,
                    width: height * 0.088,
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                    decoration: BoxDecoration(
                      color: select == index ? Colors.yellow : Colors.white,
                      border: Border.all(
                          color: select == index
                              ? Colors.transparent
                              : Colors.grey),
                      borderRadius: BorderRadius.circular(height * 0.03),
                    ),
                    child: Center(
                      child: Text(
                        's${money[index].toString()}',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Row(
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      pic = index;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.0685,
                        width: height * 0.0685,
                        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: pic == index ? Colors.yellow : Colors.white,
                          border: Border.all(
                              color: pic == index
                                  ? Colors.black
                                  : Colors.transparent,
                              width: height * 0.002),
                        ),
                        child: Image.asset(
                          list[index]['image'],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        list[index]['name'],
                        style: TextStyle(
                          fontSize: height * 0.014,
                          fontWeight: FontWeight.bold,
                          color:
                              pic == index ? Colors.black : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeft(
                  duration: Duration(seconds: 3),
                  child: MaterialButton(
                    onPressed: () {},
                    height: height * 0.07,
                    minWidth: height * 0.195,
                    color: Color(0xffFB9089),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.005),
                    ),
                    child: Text(
                      'TAKE ME BACK',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: height * 0.04,
                ),
                FadeInRight(
                  duration: Duration(seconds: 3),
                  child: MaterialButton(
                    onPressed: () {},
                    height: height * 0.07,
                    minWidth: height * 0.195,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.005),
                    ),
                    color: Color(0xff011A51),
                    child: Text(
                      "SEND MONEY",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
