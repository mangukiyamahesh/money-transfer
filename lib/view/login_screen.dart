import 'package:fashion_hub/view/forgotpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/CommonButton.dart';
import '../common/CommonTextFormField.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool favourite = true;
  final globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                SafeArea(
                  child: SvgPicture.asset(
                    "assets/images/login.svg",
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.032),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Set a name for your profile,here's",
                  style: TextStyle(
                      color: Color(0xff727E96),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.018),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Text(
                  "the password",
                  style: TextStyle(
                      color: Color(0xff727E96),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.018),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                CommonTextFormField(
                  obscure: false,
                  labelText: 'Name',
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Name can not be empty";
                    }
                  },
                  keyBoardTYpe: TextInputType.emailAddress,
                  borderRadius: BorderRadius.circular(height * 0.01),
                  borderSide:
                      BorderSide(color: Colors.grey, width: width * 0.002),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CommonTextFormField(
                  sufixicon: IconButton(
                    icon: favourite == false
                        ? Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )
                        : Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                    onPressed: () {
                      setState(() {
                        favourite = !favourite;
                      });
                    },
                  ),
                  maxLength: 8,
                  obscure: favourite,
                  labelText: 'Password',
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Password can not be empty";
                    } else if (p0.length < 6) {
                      return "password must be atleast 6 digit";
                    }
                  },
                  keyBoardTYpe: TextInputType.emailAddress,
                  borderRadius: BorderRadius.circular(height * 0.01),
                  borderSide:
                      BorderSide(color: Colors.grey, width: width * 0.002),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.018),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                CommonButton(
                  color: Color(0xffFB847C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.01)),
                  text: 'LOGIN',
                  onTap: () {},
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.018),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      "Signup",
                      style: TextStyle(
                          color: Color(0xffFB847C),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
