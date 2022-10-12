import 'package:fashion_hub/common/CommonButton.dart';
import 'package:fashion_hub/view/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class EnterCodeScreen extends StatefulWidget {
  final code;

  const EnterCodeScreen({super.key, required this.code});

  @override
  State<EnterCodeScreen> createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Enter code",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.032),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Enter the 6-digit verification sent to",
              style: TextStyle(
                  color: Color(0xff727E96),
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.02),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "+${widget.code}",
              style: TextStyle(
                  color: Color(0xff727E96),
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.02),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Image.asset(
                'assets/images/otp.png',
                height: height * 0.25,
                width: width * 0.5,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: width * 0.165,
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              style: const TextStyle(fontSize: 17, color: Colors.blue),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                borderColor: Colors.black,
                // backgroundColor: Colors.blue.shade50,
              ),
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resend code in",
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  "43",
                  style: TextStyle(color: Color(0xffFB847C)),
                ),
                Text(
                  "second",
                ),
              ],
            ),
            Spacer(),
            CommonButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(height * 0.01),
              ),
              text: "Continue",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ),
                );
              },
              color: Color(0xffFB847C),
            ),
            SizedBox(
              height: height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
