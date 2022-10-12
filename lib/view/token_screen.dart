import 'package:fashion_hub/common/CommonTextFormField.dart';
import 'package:flutter/material.dart';

class TokenScreen extends StatefulWidget {
  const TokenScreen({Key? key}) : super(key: key);

  @override
  State<TokenScreen> createState() => _TokenScreenState();
}

class _TokenScreenState extends State<TokenScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            CommonTextFormField(
              labelText: 'Enter Token number',
              obscure: true,
              sufixicon: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.01),
                child: Container(
                  height: height * 0.01,
                  width: height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(height * 0.02),
                  ),
                  child: Center(
                    child: Text(
                      'Check',
                      style: TextStyle(fontSize: height * 0.017),
                    ),
                  ),
                ),
              ),
              borderRadius: BorderRadius.circular(height * 0.02),
              borderSide: BorderSide(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(
                  vertical: height * 0.037, horizontal: width * 0.04),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            CommonTextFormField(
              labelText: 'Enter amount',
              obscure: true,
              borderRadius: BorderRadius.circular(height * 0.02),
              borderSide: BorderSide(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(
                  vertical: height * 0.037, horizontal: width * 0.04),
            ),
          ],
        ),
      ),
    );
  }
}
