import 'package:fashion_hub/common/CommonButton.dart';
import 'package:fashion_hub/common/CommonTextFormField.dart';
import 'package:fashion_hub/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  height: height * 0.03,
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.032),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Image.asset(
                  "assets/images/welcome.png",
                  height: height * 0.2,
                  width: width * 0.4,
                ),
                SizedBox(
                  height: height * 0.1,
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
                  height: height * 0.03,
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
                  height: height * 0.03,
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
                  height: height * 0.03,
                ),
                CommonButton(
                  color: Color(0xffFB847C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 0.01)),
                  text: 'CONTINUE',
                  onTap: () {
                    if (globalKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(height * 0.02),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: height * 0.7,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(height * 0.02),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.04,
                                    vertical: height * 0.07),
                                child: Column(
                                  children: [
                                    Text(
                                      'Congratulations,Now you',
                                      style: TextStyle(
                                          fontSize: height * 0.024,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'are registered!',
                                      style: TextStyle(
                                          fontSize: height * 0.024,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: height * 0.08,
                                    ),
                                    Image.asset(
                                      "assets/images/congratulation.png",
                                      height: height * 0.2,
                                      width: height * 0.2,
                                    ),
                                    Spacer(),
                                    CommonButton(
                                      text: "START",
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LogInScreen(),
                                          ),
                                        );
                                      },
                                      color: Color(0xffFB847C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            height * 0.01),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
