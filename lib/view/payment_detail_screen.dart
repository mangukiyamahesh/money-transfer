import 'package:flutter/material.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/card2.png',
      'name': 'Transfer Visa',
      'number': '******3298'
    },
    {
      'image': 'assets/images/card3.png',
      'name': 'Transfer Sona Bank',
      'number': '******3298'
    },
    {
      'image': 'assets/images/card4.png',
      'name': 'Transfer Getek Bank',
      'number': '******3298'
    },
    {
      'image': 'assets/images/card5.png',
      'name': 'Transfer Atuel Bank',
      'number': '******3298'
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
              child: Icon(
                Icons.close,
              ),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            ListTile(
              leading: Text(
                'Amount',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                '\$20.00',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: Text(
                'Top up Type',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                'Paypall',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Text(
                'Transaction ID',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                '234795-7456-0008',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: Text(
                'Time & Date',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                '01/03/22,11:00 AM',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(height * 0.045),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        height: height * 0.72,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(height * 0.045),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  Text(
                                    'Choose payment methode',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: Icon(
                                      Icons.close,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Text(
                                'Manual Verification',
                                style: TextStyle(
                                    fontSize: height * 0.022,
                                    fontWeight: FontWeight.w500),
                              ),
                              Column(
                                children: List.generate(
                                  4,
                                  (index) => Container(
                                    height: height * 0.115,
                                    width: double.infinity,
                                    margin: EdgeInsets.only(top: height * 0.02),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(height * 0.02),
                                      border: Border.all(
                                          color: Colors.grey,
                                          width: height * 0.001),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.05),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            list[index]['image'],
                                            height: height * 0.115,
                                            width: height * 0.115,
                                          ),
                                          SizedBox(
                                            width: width * 0.03,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                    letterSpacing:
                                                        height * 0.002,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: height * 0.021),
                                              ),
                                            ],
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
                      );
                    },
                  );
                },
                height: height * 0.08,
                minWidth: width * 0.8,
                color: Colors.grey.shade200,
                elevation: height * 0.01,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.022),
                ),
                child: Text(
                  'Choose payment method',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff011A51),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.06),
              child: Image.asset(
                'assets/images/logo.png',
                height: height * 0.03,
                width: height * 0.03,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff011A51),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(height * 0.03),
                        ),
                        child: Container(
                          height: height * 0.6,
                          width: height * 0.9,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                              ),
                              Image.asset(
                                'assets/images/trans.png',
                                height: height * 0.15,
                                width: height * 0.15,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Transaction Successful',
                                style: TextStyle(
                                    fontSize: height * 0.025,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'adipiscing elit. Eu dolor, bibendum',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'purus eu mi, purus lorem.',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              MaterialButton(
                                onPressed: () {},
                                height: height * 0.08,
                                minWidth: width * 0.43,
                                color: Color(0xffFB847C),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(height * 0.01),
                                ),
                                child: Text(
                                  'DONE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: height * 0.02),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                height: height * 0.08,
                minWidth: width * 0.6,
                color: Color(0xffFB847C),
                elevation: height * 0.01,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.01),
                ),
                child: Text(
                  'SEND MONEY',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
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
