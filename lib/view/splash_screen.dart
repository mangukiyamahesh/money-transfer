import 'package:fashion_hub/common/CommonButton.dart';
import 'package:fashion_hub/view/registration_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SafeArea(
                  child: Center(
                    child: Image.asset(
                      'assets/images/image1.png',
                      height: height * 0.3,
                      width: height * 0.3,
                    ),
                  ),
                ),
                Text(
                  'Flowa',
                  style: TextStyle(
                      fontSize: height * 0.03,
                      color: Color(0xff011A51),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Experience the\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff011A51),
                            fontSize: height * 0.05),
                      ),
                      TextSpan(
                          text: 'easier way ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFF897E),
                              fontSize: height * 0.05)),
                      TextSpan(
                        text: 'for\ntransaction!',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff011A51),
                            fontSize: height * 0.05),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'Connect your money to your\nfriends and brands.',
              style: TextStyle(
                  height: height * 0.0017,
                  fontSize: height * 0.023,
                  color: Color(0xff848484),
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            CommonButton(
              color: Color(0xffFB847C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(height * 0.008),
              ),
              text: "GET STARTED",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ),
                );
              },
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
