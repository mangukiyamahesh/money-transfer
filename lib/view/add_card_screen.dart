import 'package:fashion_hub/common/CommonButton.dart';
import 'package:fashion_hub/common/CommonTextFormField.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
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
                        'Add new cards',
                        style: TextStyle(
                            color: Color(0xff011A51),
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.028),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Image.asset(
                  'assets/images/36.png',
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Column(
                    children: [
                      CommonTextFormField(
                        obscure: false,
                        labelText: 'Card Number',
                        borderRadius: BorderRadius.circular(height * 0.02),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Row(
                        children: [
                          Container(
                            width: width * 0.39,
                            child: CommonTextFormField(
                              obscure: false,
                              labelText: 'Expire Date',
                              borderRadius:
                                  BorderRadius.circular(height * 0.02),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: width * 0.39,
                            child: CommonTextFormField(
                              obscure: false,
                              labelText: 'CVC/CVV',
                              borderRadius:
                                  BorderRadius.circular(height * 0.02),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      CommonTextFormField(
                        obscure: false,
                        labelText: 'Cardholder Name',
                        borderRadius: BorderRadius.circular(height * 0.02),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      CommonTextFormField(
                        obscure: false,
                        labelText: 'Address',
                        borderRadius: BorderRadius.circular(height * 0.02),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.07),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Container(
                          height: height * 0.03,
                          width: height * 0.03,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected == true
                                ? Color(0xffFB847C)
                                : Colors.white,
                            border: Border.all(
                              color: selected == true
                                  ? Colors.transparent
                                  : Colors.grey,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.done,
                              color: selected == true
                                  ? Colors.white
                                  : Colors.transparent,
                              size: height * 0.022,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'Save card',
                        style: TextStyle(
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                CommonButton(
                  minwidth: width * 0.5,
                  color: Color(0xffFB847C),
                  text: "ADD CARD",
                  onTap: () {},
                ),
                SizedBox(
                  height: height * .005,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
