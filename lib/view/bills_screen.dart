import 'package:flutter/material.dart';

class BillsScreen extends StatefulWidget {
  const BillsScreen({Key? key}) : super(key: key);

  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/5.png',
      'name': 'My House',
      'number': '**** *** 3980',
      'price': '\$15'
    },
    {
      'image': 'assets/images/6.png',
      'name': 'Electric office',
      'number': '**** *** 3980',
      'price': '\$35'
    },
    {
      'image': 'assets/images/7.png',
      'name': 'Villa Bali',
      'number': '**** *** 3980',
      'price': '\$5'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Image.asset(
            'assets/images/Electric1.png',
            height: height * 0.09,
            width: height * 0.09,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            '\$50.00',
            style: TextStyle(
                fontSize: height * 0.045, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(height * 0.04),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bills Enquery',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              color: Color(0xffFF897E),
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (index) => Container(
                          height: height * 0.115,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: height * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height * 0.02),
                            border: Border.all(
                                color: Colors.grey, width: height * 0.0003),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: width * 0.06),
                            child: Row(
                              children: [
                                Image.asset(
                                  list[index]['image'],
                                  height: height * 0.115,
                                  width: height * 0.115,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      list[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.021),
                                    ),
                                    SizedBox(
                                      height: height * 0.006,
                                    ),
                                    Text(
                                      list[index]['number'],
                                      style: TextStyle(
                                          letterSpacing: height * 0.001,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.021),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  list[index]['price'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: height * 0.022),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
