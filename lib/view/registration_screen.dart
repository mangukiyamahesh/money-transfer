import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:fashion_hub/common/CommonButton.dart';
import 'package:fashion_hub/view/enter_code_screen.dart';
import 'package:flutter/material.dart';

import '../common/CommonTextFormField.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController mobileno = TextEditingController();
  final globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              SafeArea(
                child: Center(
                  child: Text(
                    'Registration',
                    style: TextStyle(
                        fontSize: height * 0.03,
                        color: Color(0xff011A51),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Enter your mobile phone number,we will send',
                style: TextStyle(
                    fontSize: height * 0.017,
                    color: Color(0xff727E96),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                'you OTP to verify later',
                style: TextStyle(
                    fontSize: height * 0.017,
                    color: Color(0xff727E96),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Image.asset(
                'assets/images/image2.png',
                height: height * 0.2,
                width: height * 0.2,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Form(
                key: globalKey,
                child: CommonTextFormField(
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "Mobile Number can not be Empty";
                    }
                  },
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: mobileno,
                  sufixicon: mobileno.text.length == 10
                      ? Icon(
                          Icons.check_circle_outline,
                          color: Color(0xffFB847C),
                        )
                      : SizedBox(),
                  prefixicon: SizedBox(
                    child: CountryPickerDropdown(
                      icon: SizedBox(),
                      isExpanded: false,
                      initialValue: 'IN',
                      priorityList: [
                        CountryPickerUtils.getCountryByIsoCode('GB'),
                        CountryPickerUtils.getCountryByIsoCode('CN'),
                      ],
                      sortComparator: (Country a, Country b) =>
                          a.isoCode.compareTo(b.isoCode),
                      onValuePicked: (Country country) {
                        print("${country.name}");
                      },
                    ),
                  ),
                  keyBoardTYpe: TextInputType.number,
                  maxLength: 10,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: width * 0.10, vertical: height * 0.03),
                  labelText: 'Number Phone',
                  obscure: false,
                  borderSide: BorderSide(
                      color: Color(0xff000000), width: height * 0.0002),
                  borderRadius: BorderRadius.circular(height * 0.03),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CommonButton(
                color: Color(0xffFB847C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.008),
                ),
                text: "SEND VIA SMS",
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EnterCodeScreen(code: mobileno.text),
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CommonButton(
                color: Color(0xff011A51),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.008),
                ),
                text: "SEND VIA WHATSAPP",
                onTap: () {},
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                'By creating and/or using an account, you',
                style: TextStyle(
                    fontSize: height * 0.017,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.003,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'agree to our',
                    style: TextStyle(
                        fontSize: height * 0.017,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(
                        fontSize: height * 0.017,
                        color: Color(0xffFF928E),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
