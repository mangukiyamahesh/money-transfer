import 'package:flutter/material.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  double slider = 100;
  int count = 0;
  int select = 0;
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/paypal.png',
      'name': 'Paypall',
      'price': '**** *** 2878',
    },
    {
      'image': 'assets/images/mcdonald.png',
      'name': 'Mcdonalds',
      'price': '**** *** 3720',
    },
    {
      'image': 'assets/images/Amazon2.png',
      'name': 'Amazon',
      'price': '**** *** 3980',
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
                      'Transaction Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.025),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              'Amount',
              style: TextStyle(
                  color: Color(0xffFF897E),
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.025),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              '\$${slider.toStringAsFixed(0)}',
              style: TextStyle(
                  color: Color(0xffFF897E),
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.03),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SliderTheme(
              data: SliderThemeData(),
              child: Slider.adaptive(
                value: slider,
                activeColor: Color(0xffFF897E),
                inactiveColor: Color(0xffFF897E),
                divisions: 100,
                label: "\$${slider.toStringAsFixed(0)}",
                onChanged: (value) {
                  setState(() {
                    slider = value;
                  });
                },
                min: 0,
                max: 100,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.28,
              child: GridView.builder(
                itemCount: 8,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: width * 0.04,
                  mainAxisSpacing: height * 0.02,
                  childAspectRatio: 4 / 3.9,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF897E),
                      borderRadius: BorderRadius.circular(height * 0.02),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wallet Type',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: height * 0.025),
                ),
                Text(
                  'Add',
                  style: TextStyle(
                    color: Color(0xff011A51),
                    fontWeight: FontWeight.w500,
                    fontSize: height * 0.02,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: height * 0.025),
                      child: Row(
                        children: [
                          Image.asset(
                            list[index]['image'],
                            height: height * 0.07,
                            width: height * 0.07,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: height * 0.17,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                select = index;
                              });
                            },
                            child: CircleAvatar(
                              radius: height * 0.015,
                              backgroundColor: index == select
                                  ? Color(0xffFF897E)
                                  : Colors.grey,
                              child: Icon(
                                Icons.done,
                                color: index == select
                                    ? Colors.white
                                    : Colors.transparent,
                                size: height * 0.02,
                              ),
                            ),
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
    );
  }
}
