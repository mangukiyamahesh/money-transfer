import 'package:fashion_hub/common/CommonButton.dart';
import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  double slidervalue = 0;
  int selected = 0;

  int circle = 0;

  List<Map<String, dynamic>> account = [
    {
      'image': 'assets/images/8.png',
      'name': 'Personal Account',
      'number': '**** *** 2878'
    },
    {
      'image': 'assets/images/9.png',
      'name': 'Business Account',
      'number': '**** *** 3720'
    },
    {
      'image': 'assets/images/10.png',
      'name': 'Saving Account',
      'number': '**** *** 3980'
    },
  ];

  List money = [
    '\$05',
    '\$10',
    '\$15',
    '\$20',
    '\$50',
    '\$100',
    '\$500',
    '\$1k',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(height * 0.03),
              ),
            ),
            builder: (BuildContext context) {
              return Container(
                height: height * 0.7,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Text(
                        'Confirm Withdraw',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.023),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        height: height * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(height * 0.02),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.06),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Amount',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.020),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                '\$20.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height * 0.022),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        height: height * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(height * 0.02),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.06),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bank Account',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.020),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                '2348 9874 532',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.021),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        height: height * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(height * 0.02),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.06),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Amount',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height * 0.020),
                                  ),
                                  Text(
                                    '\$ 250',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                        child: CommonButton(
                          text: "WITHDRAW",
                          onTap: () {},
                          color: Color(0xffFB847C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(height * 0.01),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          size: height * 0.035,
        ),
        //mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
                      'Withdraw',
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
              height: height * 0.01,
            ),
            Text(
              'Amount',
              style: TextStyle(
                  color: Color(0xff011A51),
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.023),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Text(
                '\$${slidervalue.toStringAsFixed(0)}',
                style: TextStyle(
                    color: Color(0xff011A51),
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.03),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Text(
                'Your Balance \$9840.50',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: height * 0.018),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SliderTheme(
              data: SliderThemeData(
                  activeTrackColor: Color(0xffFF897E),
                  inactiveTrackColor: Colors.white,
                  thumbColor: Color(0xffFF897E),
                  trackHeight: height * 0.009),
              child: Slider.adaptive(
                min: 0,
                max: 1000,
                label: '\$${slidervalue.toStringAsFixed(0)}',
                value: slidervalue,
                divisions: 1000,
                onChanged: (value) {
                  setState(
                    () {
                      slidervalue = value;
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.25,
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2 / 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        height: height * 0.05,
                        width: height * 0.05,
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 0.005, vertical: height * 0.01),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: selected == index
                                  ? Colors.transparent
                                  : Colors.grey.shade300),
                          color: selected == index
                              ? Color(0xffFF897E)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(height * 0.02),
                        ),
                        child: Center(
                          child: Text(
                            money[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * 0.022,
                                color: selected == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text(
                  'Bank Account',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: height * 0.026),
                ),
                SizedBox(
                  width: height * 0.05,
                ),
                Text(
                  '${money[selected]}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: height * 0.03),
                ),
                Spacer(),
                Text(
                  'Add',
                  style: TextStyle(
                      color: Color(0xff011A51),
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.021),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Column(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.009),
                    child: Row(
                      children: [
                        Image.asset(
                          account[index]['image'],
                          height: height * 0.085,
                          width: height * 0.085,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              account[index]['name'],
                              style: TextStyle(
                                  fontSize: height * 0.022,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              account[index]['number'],
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: height * 0.022,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              circle = index;
                            });
                          },
                          child: Container(
                            height: height * 0.04,
                            width: height * 0.04,
                            decoration: BoxDecoration(
                              color: circle == index
                                  ? Color(0xffFF897E)
                                  : Colors.grey,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: circle == index
                                      ? Colors.transparent
                                      : Colors.grey.shade300,
                                  width: height * 0.002),
                            ),
                            child: Icon(
                              Icons.done,
                              color: circle == index
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                          ),
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
