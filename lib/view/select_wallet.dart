import 'package:fashion_hub/common/CommonTextFormField.dart';
import 'package:flutter/material.dart';

class SelectWalletScreen extends StatefulWidget {
  const SelectWalletScreen({Key? key}) : super(key: key);

  @override
  State<SelectWalletScreen> createState() => _SelectWalletScreenState();
}

class _SelectWalletScreenState extends State<SelectWalletScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selected = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List name = ['Cards', 'Account'];
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
                    width: height * 0.14,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      'Wallet',
                      style: TextStyle(
                          color: Color(0xff011A51),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.03),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.06,
              width: width * 0.89,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(height * 0.01),
              ),
              child: TabBar(
                onTap: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                controller: tabController,
                indicatorColor: Colors.transparent,
                tabs: List.generate(
                  2,
                  (index) => Container(
                    height: height * 0.055,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.01),
                      color: selected == index
                          ? Color(0xffFF897E)
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        name[index],
                        style: TextStyle(
                          color: selected == index ? Colors.black : Colors.grey,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(
              'assets/images/visa.png',
              height: height * 0.35,
              width: height * 0.4,
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
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CommonTextFormField(
                          obscure: false,
                          labelText: 'Expire Date',
                          borderRadius: BorderRadius.circular(height * 0.02),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Expanded(
                        child: CommonTextFormField(
                          obscure: false,
                          labelText: 'CVC/CVV',
                          borderRadius: BorderRadius.circular(height * 0.02),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
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
                    height: height * 0.03,
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
          ],
        ),
      ),
    );
  }
}
