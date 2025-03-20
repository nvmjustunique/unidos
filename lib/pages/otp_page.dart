import 'package:flutter/material.dart';
import 'package:unidos/components/otp_button.dart';

import 'package:unidos/components/otp_textfield.dart';
import 'package:unidos/pages/home_page.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});

  final divController = TextEditingController();
  final batchControoler = TextEditingController();
  final yearController = TextEditingController();

  void otp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          //hii
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Center(
                    child: Text(
                      'OTP has been sent to your email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpTextfield(
                      controller: divController,
                      hintText: '   ',
                      obscureText: false,
                    ),
                    OtpTextfield(
                      controller: batchControoler,
                      hintText: '  ',
                      obscureText: false,
                    ),
                    OtpTextfield(
                      controller: yearController,
                      hintText: ' ',
                      obscureText: false,
                    ),
                    OtpTextfield(
                      controller: yearController,
                      hintText: ' ',
                      obscureText: false,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text('Didn’t receive an OTP?  ',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 260),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 140.0),
                    child: OtpButton(
                      onTap: () {
                        otp(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
