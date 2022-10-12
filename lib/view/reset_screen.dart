import 'package:fashion_hub/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/CommonTextFormField.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
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
                    "assets/images/reset.png",
                    height: height * 0.18,
                    width: height * 0.18,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    "Reset Password",
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
                  height: height * 0.1,
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
                  labelText: 'New Password',
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
                  height: height * 0.05,
                ),
                CommonTextFormField(
                  maxLength: 8,
                  obscure: favourite,
                  labelText: 'Reset Password',
                  validator: (p0) {
                    if (p0!.length == p0) {
                      return "Password can not be empty";
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
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  height: height * 0.065,
                  minWidth: double.infinity,
                  color: Color(0xffFB847C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(height * 0.01),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoActivityIndicator(
                        color: Colors.white,
                        radius: height * 0.015,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'SUBMITING',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
