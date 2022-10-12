import 'package:fashion_hub/common/CommonButton.dart';
import 'package:flutter/material.dart';

class ScanCardScreen extends StatefulWidget {
  const ScanCardScreen({Key? key}) : super(key: key);

  @override
  State<ScanCardScreen> createState() => _ScanCardScreenState();
}

class _ScanCardScreenState extends State<ScanCardScreen> {
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
                  SizedBox(
                    width: height * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Scan your card',
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
              height: height * 0.07,
            ),
            Text(
              'Card Number',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.02),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              '0045 4768 243 0098',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.024),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Image.asset(
              'assets/images/37.png',
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              height: height * 0.1,
              width: height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.03),
                color: Color(0xff011A51),
              ),
              child: Icon(
                Icons.document_scanner_outlined,
                color: Colors.white,
                size: height * 0.05,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'Or',
              style: TextStyle(
                  color: Color(0xff011A51),
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.022),
            ),
            Spacer(),
            CommonButton(
              text: "MANUAL",
              onTap: () {},
              color: Color(0xffFB847C),
              minwidth: width * 0.85,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.01)),
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
