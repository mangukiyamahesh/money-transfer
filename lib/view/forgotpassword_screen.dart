import 'package:fashion_hub/view/reset_screen.dart';
import 'package:flutter/material.dart';

import '../common/CommonButton.dart';
import '../common/CommonTextFormField.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool favourite = true;
  final globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                SafeArea(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/forget.png",
                    height: height * 0.2,
                    width: height * 0.2,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: height * 0.032),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    "Set a name for your profile,here's",
                    style: TextStyle(
                        color: Color(0xff727E96),
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.018),
                  ),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Center(
                  child: Text(
                    "the password",
                    style: TextStyle(
                        color: Color(0xff727E96),
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.018),
                  ),
                ),
                SizedBox(
                  height: height * 0.15,
                ),
                CommonTextFormField(
                  obscure: false,
                  labelText: 'Email',
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Email address can not empty";
                    }
                  },
                  keyBoardTYpe: TextInputType.emailAddress,
                  borderRadius: BorderRadius.circular(height * 0.01),
                  borderSide:
                      BorderSide(color: Colors.grey, width: width * 0.002),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                CommonButton(
                  color: Color(0xffFB847C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.01)),
                  text: 'Next',
                  onTap: () {
                    if (globalKey.currentState!.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetScreen(),
                        ),
                      );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
