import 'package:flutter/material.dart';

import 'package:unidos/components/payment_button.dart';
import 'package:unidos/pages/home_page.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void pay(BuildContext context) {
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
        ), //hi
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset(
                "assets/images/payment.jpg",
                height: 300.0,
                width: 300.0,
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: PaymentButton(
                    onTap: () {
                      pay(context);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 15.0),
                child: Text(
                  "Please pay the registration fee and        take the screenshot of the payment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1000.0),
                child: Text(
                  "                  ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
